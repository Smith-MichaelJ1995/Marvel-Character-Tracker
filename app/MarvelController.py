from datetime import datetime
import os
import hashlib
import requests
import json

# integrate Database class controller
from DatabaseController import DatabaseController

class MarvelController():

    # instantiate API key-secret variables
    def __init__(self, databaseController):
        self.KEY = os.environ.get("MARVEL_API_KEY")
        self.HASH = os.environ.get("MARVEL_API_HASH")
        self.TIMESTAMP = os.environ.get("MARVEL_API_TIMESTAMP")
        self.base_url = "https://gateway.marvel.com:443/v1/public/"
        self.credentials_stamp = "ts={}&apikey={}&hash={}".format(
            self.TIMESTAMP,
            self.KEY, 
            self.HASH
        )
        self.characters = None
        self.dbController = databaseController

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
            res = requests.get(url, verify=False).json()


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

        # create placeholder for finalCharacterResultsList
        finalCharactersResultsList = {}

        # determine if null record
        if len(rawCharacterRecord) == 0:
            return ()
        else:

            # extract raw character record for caller
            rawCharacterRecord = rawCharacterRecord[0]

            # create placeholder for characters from other comics
            # instantiating list with target character
            finalCharactersResultsList[rawCharacterRecord['id']] = (
                rawCharacterRecord['id'],
                rawCharacterRecord['name'],
                self.fetch_comics_from_character_record(rawCharacterRecord['comics']['items']),
                rawCharacterRecord['thumbnail']['path'] + "." + rawCharacterRecord['thumbnail']['extension'],
                rawCharacterRecord['description']
            )


            # GRAB CHARACTERS FROM ALL RELATED COMICS
            for comic in rawCharacterRecord["comics"]["items"]:

                # extract comicId from comic['resourceURI']
                comicId = comic['resourceURI'].split("/")[-1]

                # fetch all characters from target comic
                finalCharactersResultsList = self.fetch_characters_from_target_comic(
                    comicId=comicId,
                    finalCharactersResultsList=finalCharactersResultsList
                )

            # provide neatened characters list to caller
            return finalCharactersResultsList


    # given characterName, query information from API
    def fetch_characters_from_target_comic(self, comicId, finalCharactersResultsList):

        # extract characters from provided comic
        rawCharactersFromTargetComic = self.fetch_content_from_api(queryURI="comics/{}/characters?".format(comicId))['data']['results']

        # traverse through all characters
        for character in rawCharactersFromTargetComic:

            # add character if not yet encountered before
            if character["id"] not in finalCharactersResultsList.keys():

                # append character from comic
                finalCharactersResultsList[character["id"]] = (
                    character['id'],
                    character['name'],
                    self.fetch_comics_from_character_record(character['comics']['items']),
                    character['thumbnail']['path'] + "." + character['thumbnail']['extension'],
                    character['description']
                )
            

        return finalCharactersResultsList


    # given comics list, return back all strings, make sure they're void of bad characters
    def fetch_comics_from_character_record(self, comics):
        comicNames = ""
        for comic in comics:
            comicName = comic['name']
            comicNames += "{}, ".format(comicName)
        return comicNames