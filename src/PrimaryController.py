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

    # display list of all schemas created
    def index(self):
        return "<h1>This is my indexpage</h1>"

    # display data contents from schema to user
    @route('/view/<name>', methods=['GET'])
    def getView(self, name):
        return "<h1>This is the view's page: {}</h1>".format(name)

    # create new view instance
    @route('/populateRecord', methods=['GET','POST'])
    def createView(self):
        if request.method == 'POST':
            
            # extact contents from form fields
            tableName = request.form['tableName']
            tableColumns = request.form['tableColumns']

            # create new table instance
            #cmd = dbController.create_table(tableName=tableName, tableColumns=tableColumns)

            # create database table
            return "<h1>{}</h1>".format(cmd)
            
        else:
            return "<h1>Table Contents</h1>"

    # create new view instance
    @route('/createView', methods=['GET','POST'])
    def createView(self):
        if request.method == 'POST':
            
            # extact contents from form fields
            tableName = request.form['tableName']
            tableColumns = request.form['tableColumns']

            # create new table instance
            #cmd = dbController.create_table(tableName=tableName, tableColumns=tableColumns)

            # create database table
            return "<h1>{}</h1>".format(cmd)
            
        else:
            return render_template("form.html")

# instantiate PrimaryController FlaskAPI Instance
PrimaryController.register(app, route_base='/')

# instantiate MongoDB/MarvelController instances


# trigger invocation of API
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5050, debug=True)

    

