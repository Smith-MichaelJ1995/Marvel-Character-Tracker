from datetime import datetime
import os
import hashlib

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
        self.credentials_stamp = "&ts={}&apikey={}&hash={}".format(
            self.config['timestamp'],
            self.config['key'], 
            self.config['hash']
        )
        self.characters = None

    # # return character profile based on name
    def fetch_content_from_api(self, queryURI):
        
        # invoke marvel API
        try:

            # build URL request method
            url = self.base_url + queryURI + self.credentials_stamp

            # perform HTTP web request
            return requests.get(url).json()


        except Exception as e:

            # display error content to screen
            print("The Following Exception Occured: {}".format(e))

            # return empty object to user
            return {}
    
    # given characterName, query information from API
    def fetch_target_character_from_api(self, characterName):
        return self.fetch_content_from_api(queryURI="characters?name={}".format(characterName))
    

# # given character name & payload, write contents to filesystem
# def write_character_to_filesystem(filename, payload):

#     # define target filepath
#     path = "../characters/{}.json".format(filename)

#     # write character contents to filesystem
#     with open(path, "w") as outfile:
#         json.dump(payload, outfile, indent=4)


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


# # generate api config information
# config = fetch_config()

# # provide primary character name of interest
# character_name = "spectrum"

# # extract character information from file
# target_character = fetch_character_from_api(name=character_name, config=config)

# # write target character information to filesystem
# write_character_to_filesystem(character_name, target_character)

# # traverse through all comics belonging to character
# for comic in target_character['data']['results']['comics']['items']:

#     # extract comic ID from URI
#     comicId = comic["resourceURI"].split("/")[-1]

#     # extact all characters in provided comic
#     charactersInComic = fetch_all_characters_from_comic(comicId=comicId, config=config)["data"]["results"]

#     # display all comics in payload
#     for character in charactersInComic:

#         # extract character name
#         characterName = character['name'].lower()

#         # only save new character if not target character
#         if character_name != characterName:

#             # write character content to filesystem
#             write_character_to_filesystem(filename=characterName, payload=character)

# # extract character information from filesystem
# def fetch_character_from_filesystem(name):

#     # define file path
#     path = "../characters/{}.json".format(name.lower())

#     # Opening JSON file
#     f = open(path)
    
#     # returns JSON object as 
#     # a dictionary
#     payload = json.load(f)

#     # Closing file
#     f.close()
    
#     # provide only required character information to caller
#     return payload['data']['results'][0]


# write all character info to filesystem
#write_character_to_filesystem(filename="../comics/{}.json".format(comicId), payload=characters)

