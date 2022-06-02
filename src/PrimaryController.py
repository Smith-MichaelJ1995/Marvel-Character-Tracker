# import hashlib
# import requests
import json
import os

# integrate Flask API Class Libraries
from flask import Flask, request, jsonify, render_template, redirect
from flask_classful import FlaskView, route

# integrate MongoDB & MarvelController class controller
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
                <title>Bootstrap Example</title>
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
                        <input class="form-control mr-sm-2" type="text" placeholder="Search">
                        <button class="btn btn-success" type="submit">Search</button>
                        </form>
                    </nav>

                    <div class="container pt-3">
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
        boilerplageContent = self.defaultHTMLWebpage

        # create placeholder for inserted HTML content
        dynamicContent = ""

        # programmatically generate tables for eac
        if len(table_names) == 0:
            dynamicContent += "<h1 style='text-align: center;'>No Characters Found:</h1>"
        else:
            dynamicContent += "<h1 style='text-align: center;'>Select Character(s) From List Below:</h1>"
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
        boilerplageContent = boilerplageContent.replace("<INSERT-DYNAMIC-CONTENT-HERE>", dynamicContent)

        return boilerplageContent


        # # determine which tables we have already
        # dbTableNames = dbController.fetch_table_names()

        # print("dbTableNames = {}".format(dbTableNames))

        # # determine if marvelControllerData == None
        # if mvController.characters == None:

        #     # fetch target character from API
        #     targetCharacter = mvController.fetch_target_character_from_api(characterName="Spectrum")
            
        #     # append target record into database
        #     # data

        #     mvController.characters = "Hello World"
        #     return "<h1>From Database: {}</h1>".format(mvController.characters)
        # else:
        #     return "<h1>From Cache: {}</h1>".format(mvController.characters)

        # THEN query database
        # ELSE populate HTML table with marvel data
        # return "<h1>This is my indexpage</h1>"

    # ROUTE #1: DISPLAY ALL DATA RECORDS FROM SPECIFIED TABLE
    @route('/view/<name>', methods=['GET'])
    def getTable(self, name):
        #return "<h1>This is the view's page: {}</h1>".format(name)
        print("Performing redirect!")
        return redirect("http://localhost:5050/", code=302)

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
        print("Hello World!")
        return redirect("http://localhost:5050/", code=302)
        pass

    # create new view instance
    # @route('/generate', methods=['POST','GET'])
    # def createView(self):

    #     # extact contents from form fields
    #     # tableName = request.form['tableName']
    #     # tableColumns = request.form['tableColumns']
    #     if request.method == 'POST':
            
    #         # read state file contents from filesystem
    #         state = self.fetch_state_from_filesystem()

    #         # determine which tables we have already
    #         dbTableNames = dbController.fetch_table_names()

    #         print("dbTableNames = {}".format(dbTableNames))

    #         return "<h1>{}</h1>".format(dbTableNames)
            
    #     else:
    #         return render_template("form.html")

# instantiate PrimaryController FlaskAPI Instance
PrimaryController.register(app, route_base='/')

# instantiate MongoDB/MarvelController instances


# trigger invocation of API
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5050, debug=True)

    

