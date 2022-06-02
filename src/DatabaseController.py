import mysql.connector
from mysql.connector import errorcode
import os
import json

# instantiate database controller
class DatabaseController:

    # perform connection operation
    def connect(self):
        try:
            return mysql.connector.connect(
                host="127.0.0.1",
                user=os.environ.get('SQL_USER'),
                password=os.environ.get('SQL_PASSWORD'),  
                database=os.environ.get('SQL_DATABASE'),               
                port=os.environ.get('SQL_PORT'),
            )

        except mysql.connector.Error as err:
            if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
                print("Something is wrong with your user name or password")
            elif err.errno == errorcode.ER_BAD_DB_ERROR:
                print("Database does not exist")
            else:
                print(err)
            exit()

    # perform operation on class instantiation
    def populate(self):

        # create temporary records placeholder
        records = {}

        # fetch all tables in "intel" database
        self.myCursor.execute("show TABLES;")
        tables = self.myCursor.fetchall()

        # traverse through all tables
        for table in tables:

            # extract column name
            tableName = table[0]
            searchResults = []

            # extract all records from table in question
            self.myCursor.execute("SELECT * from {}".format(tableName))
            rows = self.myCursor.fetchall()

            # fetch all records from all rows
            for index, row in enumerate(rows):

                # extract key/value fields
                heroNumber = row[0]
                heroName = row[1]
                heroThumbnail = row[2]
                heroDescription = row[3]

                # append search results for future processing
                searchResults.append({
                    "id": heroNumber,
                    "name": heroName,
                    "img": heroThumbnail,
                    "description": heroDescription 
                })
            
            
            # append item to records container
            records[tableName] = searchResults
            
        return records

    # given string, remove bad sql characters
    def remove_bad_characters(self, inpt):
        for badChar in self.badChars:
            inpt = inpt.replace(badChar, "")
        return inpt
        
    # return all table names within intel database
    def return_table_names(self):
        return self.records.keys()

    # return table records to viewer
    def return_records_from_table(self, tableName):
        if tableName in self.records.keys():
            return self.records[tableName]
        else:
            return []
        

    # instantiate expected variables
    def __init__(self):

        # generate DB connection object
        self.myDB = self.connect()

        # generate cursor for inline command invocation
        self.myCursor = self.myDB.cursor()

        # declare list of known bad characters for safety
        self.badChars = ['&','<','>','/','\\','"',"'",'?','+']

        # use selected database
        self.myCursor.execute("USE intel;")

        # populate records from database
        self.records = self.populate()

        print(self.records)

    # insert records into databases specified table
    def insert_records(self, tableName, tableRecords):  

        # tableRecords = [
        #     {'id': 1009664, 'name': 'Thor', 'img': 'http://i.annihil.us/u/prod/marvel/i/mg/d/d0/5269657a74350.jpg', 'description': 'As the Norse God of thunder and lightning, Thor wields one of the greatest weapons ever made, the enchanted hammer Mjolnir. While others have described Thor as an over-muscled, oafish imbecile, hes quite smart and compassionate.  Hes self-assured, and he would never, ever stop fighting for a worthwhile cause.'},
        #     {'id': 1009175, 'name': 'Beast', 'img': 'http://i.annihil.us/u/prod/marvel/i/mg/2/80/511a79a0451a3.jpg', 'description': ''},
        #     {'id': 1009351, 'name': 'Hulk', 'img': 'http://i.annihil.us/u/prod/marvel/i/mg/5/a0/538615ca33ab0.jpg', 'description': 'Caught in a gamma bomb explosion while trying to save the life of a teenager, Dr. Bruce Banner was transformed into the incredibly powerful creature called the Hulk. An all too often misunderstood hero, the angrier the Hulk gets, the stronger the Hulk gets.'},
        #     {'id': 1009362, 'name': 'Iceman', 'img': 'http://i.annihil.us/u/prod/marvel/i/mg/1/d0/52696c836898c.jpg', 'description': ''}
        # ]

        # given list of dictionary records, generate list of tuples ready to insert
        def generate_tuple_of_data(): 
            tableRecordsSet = []
            for record in tableRecords:
                tableRecordsSet.append((record['id'], record['name'], record['img'], record['description']))
            return tableRecordsSet
            # remove final character
            #dbDataRecords = dbDataRecords[:-1]
            #return dbDataRecords
            

        # insert into self.records
        self.records[tableName] = tableRecords

        # print(generate_tuple_of_data())
        # exit()

        # print(generate_tuple_of_data(tableRecords))
        # exit()
        #tableRecords = set(tableRecords)
        #print(tableRecords)
        
        # create table
        cmd = """CREATE TABLE {} (id INTEGER, name VARCHAR(255), image VARCHAR(255), description VARCHAR(1000));""".format(tableName)
        #cmd = """CREATE TABLE spectrum (id INTEGER, name VARCHAR(255), image VARCHAR(255), description VARCHAR(1000));"""
        self.myCursor.execute(cmd)

        # generate records ready for sql file insertion
        # tableRecords = (
        #     (1009664,'Thor','http://i.annihil.us/u/prod/marvel/i/mg/d/d0/5269657a74350.jpg','As the Norse God of thunder and lightning, Thor wields one of the greatest weapons ever made, the enchanted hammer Mjolnir. While others have described Thor as an over-muscled, oafish imbecile, hes quite smart and compassionate.  Hes self-assured, and he would never, ever stop fighting for a worthwhile cause.'),
        #     (1009175,'Beast','http://i.annihil.us/u/prod/marvel/i/mg/2/80/511a79a0451a3.jpg',''),(1009351,'Hulk','http://i.annihil.us/u/prod/marvel/i/mg/5/a0/538615ca33ab0.jpg','Caught in a gamma bomb explosion while trying to save the life of a teenager, Dr. Bruce Banner was transformed into the incredibly powerful creature called the Hulk. An all too often misunderstood hero, the angrier the Hulk gets, the stronger the Hulk gets.'),
        #     (1009362,'Iceman','http://i.annihil.us/u/prod/marvel/i/mg/1/d0/52696c836898c.jpg','')
        # )

        # insert records into table
        # DEFINE INSERTION STATEMENT, PROTECT AGAINST SQL INJECTION
        sqlStatement = """INSERT INTO {} (id, name, image, description) VALUES (%s, %s, %s, %s)""".format(tableName)
        # invoke statement, add records.
        #sqlStatement = """INSERT INTO spectrum (id, name, image, description) VALUES (%s, %s, %s, %s)"""
        self.myCursor.executemany(sqlStatement, generate_tuple_of_data())

        # changes must be commited to the database in order to take effect
        self.myDB.commit()