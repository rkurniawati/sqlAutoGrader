#!/usr/bin/python3

# this script will create answer JSON file for the runScriptAndCheckAnswers.py

import mysql.connector
import sys
import json
import re

def getDBConnection():
    cnx = mysql.connector.connect(pool_name="mypool", pool_size=3, 
                            user='root', password='root',
                            host='localhost',
                            database='K9U')

    cnx.autocommit = True
    return cnx

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage {} script.sql answers.json".format(sys.argv[0]))
        sys.exit(1)

    filename = sys.argv[1]
    answerfile = sys.argv[2]

    cnx = getDBConnection()
    cursor = cnx.cursor()

    answers = {};

    operation = open(filename).read()

    questionStart = re.compile('\*{3,5}\s+Question\s+\d+')
    currentKey = None
    for result in cursor.execute(operation, multi=True):
        if result.with_rows:
            #print("Rows produced by statement '{}':".format(result.statement))
            rows = result.fetchall()
            if len(rows) > 0:
                # we have at least one row
                firstRow = rows[0]
                if len(firstRow) > 0:
                    # we have at least one column
                    firstRowFirstCol = firstRow[0]
                    if questionStart.search(str(firstRowFirstCol)):
                        currentKey = firstRowFirstCol
                    else:
                        answers[currentKey] = str(rows)
        else:
            print("Number of rows affected by statement '{}': {}".format(result.statement, result.rowcount))


    cursor.close()
    cnx.close()

    # now we're ready to serialize the answer dictionary to JSON
    json.dump(answers, open(answerfile, "w"))
