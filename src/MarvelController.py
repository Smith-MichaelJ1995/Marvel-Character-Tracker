from datetime import datetime
import os
import hashlib
import requests

# integrate Database class controller
from DatabaseController import DatabaseController

class MarvelController():

    # generate API auth credentials
    def fetch_config(self):

        # GENERATE TIMESTAMP
        ts = int(round(datetime.now().timestamp()))

        # GENERATE PRE-HASH-STRING
        preHashContents = str(ts) + self.SECRET + self.KEY 

        # perform URL encoding
        hsh = hashlib.md5(preHashContents.encode('utf-8')).hexdigest()

        # provide query config contents to caller
        return { "timestamp": ts, "key": self.KEY, "hash": hsh }


    # instantiate API key-secret variables
    def __init__(self):
        self.KEY = os.environ.get('MARVEL_API_KEY')
        self.SECRET = os.environ.get("MARVEL_API_SECRET")
        self.config = self.fetch_config()
        self.base_url = "https://gateway.marvel.com:443/v1/public/"
        self.credentials_stamp = "ts={}&apikey={}&hash={}".format(
            self.config['timestamp'],
            self.config['key'], 
            self.config['hash']
        )
        self.characters = None
        self.dbController = DatabaseController()

    # # return character profile based on name
    def fetch_content_from_api(self, queryURI):
        
        # invoke marvel API
        try:

            # build URL request method
            url = self.base_url + queryURI + self.credentials_stamp

            # WORKS
            #url = "https://gateway.marvel.com:443/v1/public/characters?name=Morbius&ts=1654164246&apikey=2a346d86972cc65d7982367dae7758af&hash=c74292bea3e7719c8c7f553435a88f67"

            # DOESNT WORK
            #url = "https://gateway.marvel.com:443/v1/public/characters?name='Morbius'&ts=1654164802&apikey=2a346d86972cc65d7982367dae7758af&hash=c1eb37eddc89b622161a8aa368d12057"

            #print("ATTEMPTING: {}".format(url))

            # generate response body
            res = requests.get(url).json()

            #https://gateway.marvel.com:443/v1/public/characters?name=ace&ts=1654136081&apikey=2a346d86972cc65d7982367dae7758af&hash=0a6c68ce57dcb731dbb49be859124363

            # perform HTTP web request
            return res


        except Exception as e:

            # display error content to screen
            print("The Following Exception Occured: {}".format(e))

            # return empty object to user
            return {}
    
    # FIX RECORDS SO THEY RETURN BACK NEATLY FORMATTED DATA READY FOR DB CONTROLLER
    # given characterName, query information from API
    def fetch_target_character_from_api(self, characterName):

        # query API for character record
        rawCharacterRecord = self.fetch_content_from_api(queryURI="characters?name={}&".format(characterName))['data']['results']

        # determine if null record
        if len(rawCharacterRecord) == 0:
            return []
        else:

            # extract raw character record for caller
            rawCharacterRecord = rawCharacterRecord[0]

            # create placeholder for characters from other comics
            # instantiating list with target character
            finalCharactersResultsList = [
                {
                    "id":rawCharacterRecord['id'],
                    "name": self.dbController.remove_bad_characters(rawCharacterRecord['name']),
                    "comics": self.fetch_comics_from_character_record(rawCharacterRecord['comics']['items']),
                    "img": rawCharacterRecord['thumbnail']['path'] + "." + rawCharacterRecord['thumbnail']['extension'],
                    "description": self.dbController.remove_bad_characters(
                        inpt=rawCharacterRecord['description']
                    )   
                }
            ]


            # GRAB CHARACTERS FROM ALL RELATED COMICS
            for comic in rawCharacterRecord["comics"]["items"]:

                # extract comicId from comic['resourceURI']
                comicId = comic['resourceURI'].split("/")[-1]

                # fetch all characters from target comic
                charactersFromTargetComic = self.fetch_characters_from_target_comic(comicId=comicId)

                # save character object for later processing
                finalCharactersResultsList.extend(
                    charactersFromTargetComic
                )

                break


            # provide neatened characters list to caller
            return finalCharactersResultsList


    # given characterName, query information from API
    def fetch_characters_from_target_comic(self, comicId):
        # extract characters from provided comic
        rawCharactersFromTargetComic = self.fetch_content_from_api(queryURI="comics/{}/characters?".format(comicId))['data']['results']

        #print("rawCharactersFromTargetComic = {}".format(rawCharactersFromTargetComic))
        #exit()

        # create characters list placeholder
        charactersCleansed = []

        # traverse through all characters
        for character in rawCharactersFromTargetComic:

            charactersCleansed.append({
                "id":character['id'],
                "name": self.dbController.remove_bad_characters(character['name']),
                "comics": self.fetch_comics_from_character_record(character['comics']['items']),
                "img": character['thumbnail']['path'] + "." + character['thumbnail']['extension'],
                "description": self.dbController.remove_bad_characters(
                    inpt=character['description']
                )
            })

        return charactersCleansed


    # given comics list, return back all strings, make sure they're void of bad characters
    def fetch_comics_from_character_record(self, comics):
        comicNames = ""
        for comic in comics:
            comicName = self.dbController.remove_bad_characters(
                inpt=comic['name']
            )
            comicNames += "{}, ".format(comicName)
        return comicNames
    
# # given provided comic information, return/fetch all characters within comic
# def fetch_all_characters_from_comic(comicId, config):
    
#     # invoke marvel API
#     try:

#         print("Processing Comic: {}".format(comicId))

#         # build URL request method
#         url = 'https://gateway.marvel.com:443/v1/public/comics/{}/characters?ts={}&apikey={}&hash={}'.format(
#             comicId,
#             config['timestamp'],
#             config['key'], 
#             config['hash']
#         )

#         # perform HTTP web request
#         return requests.get(url).json()

#     except Exception as e:
#         print("The Following Exception Occured: {}".format(e))
#         exit()

