import mysql.connector
from mysql.connector import errorcode
import os

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
    def remove_bad_characters(inpt):
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

        # remove bad chara

        # PROTECT TABLE NAME FROM INJECTION
        sqlStatement = "INSERT INTO {} (id, name, image, description) VALUES (%s, %s, %s, %s)".format(tableName)

        # use selected database
        self.myCursor.executemany(sqlStatement, tableRecords)

        pass
        
    

    # create table instance within views database
    def create_table(self, tableName, tableColumns):
        # def extrapolate_columns():
        #     columnString = ""
        #     for column in tableColumns.split(","):
        #         columnContents = column.split(":")
        #         alias = columnContents[0]
        #         dType = columnContents[1]
        #         columnString += alias + " " + dType + ","
        #     return columnString[:-1]
        
        # generate query string
        # cmd = """CREATE TABLE customers (name VARCHAR(255), address VARCHAR(255))"""
        cmd = """CREATE TABLE characters (id INTEGER, name VARCHAR(255), image VARCHAR(255), description VARCHAR(255))"""
        
        # invoke SQL command
        self.myCursor.execute(cmd)