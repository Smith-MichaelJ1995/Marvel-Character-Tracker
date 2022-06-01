# import hashlib
# import requests
import json
import os

# integrate Flask API Class Libraries
from flask import Flask, request, jsonify, render_template
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
        pass

    # read contents of statefile in from the filesystem
    def fetch_state_from_filesystem(self):
    
        # define file path
        path = "../state.json"

        # Opening JSON file
        f = open(path)
        
        # returns JSON object as a dictionary
        state = json.load(f)

        # Closing file
        f.close()
        
        # provide only required character information to caller
        return state

    # display list of all schemas created
    def index(self):

        # determine which tables we have already
        dbTableNames = dbController.fetch_table_names()

        print("dbTableNames = {}".format(dbTableNames))

        # determine if marvelControllerData == None
        if mvController.characters == None:

            # fetch target character from API
            targetCharacter = mvController.fetch_target_character_from_api(characterName="Spectrum")
            
            # append target record into database
            # data

            mvController.characters = "Hello World"
            return "<h1>From Database: {}</h1>".format(mvController.characters)
        else:
            return "<h1>From Cache: {}</h1>".format(mvController.characters)

        # THEN query database
        # ELSE populate HTML table with marvel data


        # return "<h1>This is my indexpage</h1>"

    # display data contents from schema to user
    # @route('/view/<name>', methods=['GET'])
    # def getView(self, name):
    #     return "<h1>This is the view's page: {}</h1>".format(name)

    # create new view instance
    @route('/populateRecord', methods=['GET','POST'])
    def createView(self):
        pass

    # create new view instance
    @route('/generate', methods=['POST','GET'])
    def createView(self):

        # extact contents from form fields
        # tableName = request.form['tableName']
        # tableColumns = request.form['tableColumns']
        if request.method == 'POST':
            
            # read state file contents from filesystem
            state = self.fetch_state_from_filesystem()

            # determine which tables we have already
            dbTableNames = dbController.fetch_table_names()

            print("dbTableNames = {}".format(dbTableNames))

            return "<h1>{}</h1>".format(dbTableNames)
            
        else:
            return render_template("form.html")

# instantiate PrimaryController FlaskAPI Instance
PrimaryController.register(app, route_base='/')

# instantiate MongoDB/MarvelController instances


# trigger invocation of API
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5050, debug=True)

    

