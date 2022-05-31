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
                database="intel",               
                port="3306",
            )

        except mysql.connector.Error as err:
            if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
                print("Something is wrong with your user name or password")
            elif err.errno == errorcode.ER_BAD_DB_ERROR:
                print("Database does not exist")
            else:
                print(err)
            exit()

    # instantiate expected variables
    def __init__(self):

        # generate DB connection object
        self.myDB = self.connect()

        # generate cursor for inline command invocation
        self.myCursor = self.myDB.cursor()

        # use selected database
        self.myCursor.execute("USE intel;")

        #print("HELLO FROM DATABASE!")
        #print(self.myDB)
        pass

    # insert records into database
    def insert_records(self, records):
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