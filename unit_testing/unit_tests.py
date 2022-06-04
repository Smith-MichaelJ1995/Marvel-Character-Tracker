import requests
import json

# read test cases from filesystem
# Reading from tests.json
def fetch_test_cases():
    with open("tests.json", "r") as cases:
        return json.load(cases)

# retrieve all test cases from file system
cases = fetch_test_cases()

# iterate through all tests
for number, testCase in enumerate(cases):

    # display extract test information
    characterName = testCase['name']
    characterExpectedConfig = testCase['expectedConfig']
    
    # display test information
    print("\n#####################################################")
    print("Test Case #: {}".format(number))
    print("Character Name: {}".format(characterName))

    #print(characterExpectedConfig)

    # fetch character information from API


    # compare equality of records


    #