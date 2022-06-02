# import hashlib
# import requests
import json
import os

# integrate Flask API Class Libraries
from flask import Flask, request, jsonify, render_template, redirect
from flask_classful import FlaskView, route

# integrate Database & MarvelController class controller
from DatabaseController import DatabaseController
from MarvelController import MarvelController

# instantiate app instance
app = Flask(__name__)

# instantiate neighboring controller classes
mvController = MarvelController()
dbController = DatabaseController()

# Controller Class To Integrate with UI, MarvelAPI Backend, Local Database.
class PrimaryController(FlaskView):

    # instantiate expected variables
    def __init__(self):

        # universal header of all app pages
        self.defaultHTMLWebpage = """
            <!DOCTYPE html>
                <html lang="en">
                <head>
                <title>Impossible Travel Alert Monitor</title>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
                <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
                </head>
                <body>

                    <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-between">
                        <form class="form-inline" action="/populateRecord" method="post">
                        <a class="navbar-brand" href="/">
                            <img src="https://cdn.iconscout.com/icon/free/png-256/marvel-282124.png" alt="Marvel" style="width:100px; height:60px; padding: 0px">
                        </a>
                        <input class="form-control mr-sm-2" type="text" name="characterName" placeholder="Query Additional Characters Here">
                        <button class="btn btn-success" type="submit">Generate</button>
                        </form>
                    </nav>

                    <div class="container-fluid pt-3">
                        <div class="row pt-3">
                            <div class="col-lg-12">
                                <INSERT-DYNAMIC-CONTENT-HERE>
                            </div>
                        </div>
                    </div>
                </body>
            </html>
        """


    # ROUTE #0: DISPLAY ALL TABLES (CHARACTERS) IN DATABASE AS CLICKABLE LINKS
    def index(self):

        # extract table names from data cache
        table_names = dbController.return_table_names()

        # instantiate webpage content
        boilerplateContent = self.defaultHTMLWebpage

        # create placeholder for inserted HTML content
        dynamicContent = ""

        # programmatically generate tables for eac
        if len(table_names) == 0:
            dynamicContent += "<h1 style='text-align: center;'>No Characters Found:</h1>"
        else:
            dynamicContent += "<h1 style='text-align: center;'>Select Character(s) Below:</h1>"
            # dynamically create cards for each table
            for table in table_names:
                dynamicContent +="""
                    <div class="card">
                        <div class="card-header">
                            <h2>{}</h2>
                        </div> 
                        <div class="card-body">
                            <a href="/view/{}">View {}'s Information & Relevant Characters From Comics</a>
                        </div> 
                    </div>
                """.format(table.capitalize(), table, table.capitalize())

        # add footer content to webpage
        boilerplateContent = boilerplateContent.replace("<INSERT-DYNAMIC-CONTENT-HERE>", dynamicContent)

        return boilerplateContent


    # ROUTE #1: DISPLAY ALL DATA RECORDS FROM SPECIFIED TABLE
    @route('/view/<name>', methods=['GET'])
    def getTable(self, name):

        # given records list, return primary character
        def getPrimaryRecord(name, records):
            for record in records:
                if name == record['name'].lower():
                    return record
            

        # fetch records from database table
        records = dbController.return_records_from_table(name)

        # instantiate webpage content
        boilerplateContent = self.defaultHTMLWebpage

        # create placeholder for inserted HTML content
        dynamicContent = ""

        # determine quantity of records
        if len(records) > 0:
            
            # extract primary character
            primaryCharacterRecord = getPrimaryRecord(name, records)

            # remove primary character from local records (all we have left is characters from other comics)
            # records.remove(primaryCharacterRecord)

            # display primary character information
            dynamicContent += """
                <div class="jumbotron">
                    <h1 style='text-align: center;'>Primary Character Name: <i>{}</i></h1>
                    <h1 style='text-align: center;'>Primary Character ID: <i>{}</i></h1>
                    <ul class="list-group">
                        <li class="list-group-item">
                            <h3>Thumbnail:</h3> <img src={}></img>
                        </li>
                        <li class="list-group-item">
                            <h3>Description:<h3> <p>{}</p>
                        </li>
                    </ul>
                </div>
            """.format(primaryCharacterRecord["name"],primaryCharacterRecord["id"], primaryCharacterRecord["img"], primaryCharacterRecord["description"])

            # begin to create template for filterable table
            dynamicContent += """
            <div class="container-fluid mt-3">
                <h2>Filterable Table</h2>
                    <p>Type something in the input field to search the character for name, id, comics, description:</p>
                    <input class="form-control" id="myInput" type="text" placeholder="Search..">
                    <br>

                    <table class="table table-bordered">
                        <thead>
                            <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Comics</th>
                            <th>Image</th>
                            <th>Description</th>
                            </tr>
                        </thead>
                        <tbody id="myTable">"""

            # traverse through all records, generate HTML
            # show characters from comics
            for record in records:

                # append table row and all columns
                dynamicContent += """
                <tr>
                    <td>{}</td>
                    <td>{}</td>
                    <td><p>{}</p></td>
                    <td><img src={}></img></td>
                    <td><p>{}</p></td>
                </tr>
                """.format(record['id'], record['name'], record['comics'], record['img'], record['description'])
                        
                        
            # append dynamic table footer contents
            dynamicContent += """
                    <script>
                        $(document).ready(function(){
                            $("#myInput").on("keyup", function() {
                            var value = $(this).val().toLowerCase();
                            $("#myTable tr").filter(function() {
                                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                            });
                            });
                        });
                    </script>
                </tbody>
            </table>
            """

        else:
            dynamicContent += "<h1 style='text-align: center;'>No Information Found...</h1>"

        # add footer content to webpage
        boilerplateContent = boilerplateContent.replace("<INSERT-DYNAMIC-CONTENT-HERE>", dynamicContent)

        return boilerplateContent

    # ROUTE #2: GIVEN NEW CHARACTER, PERFORM THE FOLLOWING APPLICATION LOGIC:
    # IF TABLE ALREADY EXISTS (CHECK AGAINST OUR RECORDS CONTROLLER), IF SO, RETURN ALERT MESSAGE AND DO NOTHING
    # IF TABLE DOESN'T EXIST, THEN:
    #    - QUERY MARVEL API, FETCH SPECIFIED CHARACTER RECORD, THEN FETCH ALL CHARACTER INTERACTED WITH IN OTHER COMICS
    #    - ADD RECORD INTO RECORDS CONTROLLER  
    #    - CREATE TABLE IN DATABASE
    #    - INSERT ALL DISCOVERED RECORDS INTO DATABASE
    # RE-ROUTE TO HOME PAGE             
    @route('/populateRecord', methods=['POST'])
    def createView(self):

        #character = mvController.fetch_target_character_from_api("Morbius")

        # print(character)
        # return "<h1>All DONE</h1>"

        # extract desired character/table from input form
        characterName = "" if request.form['characterName'] == "" else request.form['characterName'].lower()
        characterComics = []

        # extract table names from data cache
        table_names = dbController.return_table_names()

        # if character name exists, then notify user and redirect to homepage
        if characterName not in table_names: 

            # extract character from record from API
            # QUERY MARVEL API, FETCH SPECIFIED CHARACTER RECORD, THEN 
            characterRecord = mvController.fetch_target_character_from_api(characterName=characterName)

            # THIS CHECK ENSURES GRACEFUL HANDLING OF NO RESULTS OR FINDING UNINTENDED CHARACTERS THRU API
            if characterRecord['data']['results'] == [] or characterRecord["data"]["results"][0]['name'].lower() != characterName:
                return redirect("/", code=302) 
            
            # FETCH ALL CHARACTER INTERACTED WITH IN OTHER COMICS
            characterRecord = characterRecord["data"]["results"][0]

            # append primary characterRecord onto characterComics list
            characterComics.append(characterRecord)
            
            # traverse through & record list of comics from record
            # GRAB CHARACTERS FROM ALL RELATED COMICS
            for comic in characterRecord["comics"]["items"]:

                # extract comicId from comic['resourceURI']
                comicId = comic['resourceURI'].split("/")[-1]

                # fetch all characters from target comic
                charactersFromTargetComic = mvController.fetch_characters_from_target_comic(comicId=comicId)

                # save character object for later processing
                characterComics.append(
                    charactersFromTargetComic
                )

                break

            # filtering data record into desired format for database controller
            # GRAB INSERTABLE RECORD FOR EACH characterComic
            relevantFieldsRecordsContainer = []
            for characterComic in characterComics:

                print("characterComic = {}".format(json.dumps(characterComic, indent=4)))

                # extract fields
                heroNumber = int(characterComic['id'])
                heroName = dbController.remove_bad_characters(inpt=characterComic['name'])
                heroComics = mvController.fetch_comics_from_character_record(characterComic['comics']['items'])
                heroThumbnail = characterComic['thumbnail']['path'] + characterComic['thumbnail']['extension']
                heroDescription = dbController.remove_bad_characters(inpt=characterComic['description'])

                # stage record
                relevantFieldsRecordsContainer.append({
                    "id": heroNumber,
                    "name": heroName,
                    "comics": heroComics,
                    "img": heroThumbnail,
                    "description": heroDescription 
                })

            # ADD RECORD INTO DATABASE CONTROLLER  
            dbController.insert_records(characterName, relevantFieldsRecordsContainer)


            # CREATE TABLE IN DATABASE
            # INSERT ALL DISCOVERED RECORDS INTO DATABASE
            # RE-ROUTE TO HOME PAGE   



        # character already exists, return back existing page
        return redirect("/view/{}".format(characterName), code=302)




        #print("Hello World!")
        #return redirect("http://localhost:5050/", code=302)
        #pass

    # create new view instance
    # @route('/generate', methods=['POST','GET'])
    # def createView(self):

    #     # extact contents from form fields
    #     # tableName = request.form['tableName']
    #     # tableColumns = request.form['tableColumns']


# instantiate PrimaryController FlaskAPI Instance
PrimaryController.register(app, route_base='/')

# instantiate MongoDB/MarvelController instances


# trigger invocation of API
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5050, debug=True)

    

