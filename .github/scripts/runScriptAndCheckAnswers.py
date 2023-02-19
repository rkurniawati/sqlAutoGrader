#!/usr/bin/python3

import mysql.connector
import sys
import json
import re

def getDBConnection(dbName):
    userEnv = 'root'
    passwordEnv = 'root'

    cnx = mysql.connector.connect(pool_name="mypool", pool_size=3, 
                            user=userEnv, password=passwordEnv,
                            host='localhost',
                            database=dbName)

    cnx.autocommit = True
    return cnx

def loadAnswers(answerFile):
    ans = json.load(open(answerFile, "r"))
    return ans

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage {} dbname script.sql answers.json".format(sys.argv[0]))
        sys.exit(1)

    dbName = sys.argv[1]
    filename = sys.argv[2]
    answerfile = sys.argv[3]

    cnx = getDBConnection(dbName)
    cursor = cnx.cursor()

    answers = loadAnswers(answerfile);
    studentAnswers = {}

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
                        if currentKey is not None:
                            ans = answers[currentKey]
                            studentAnswer = str(rows)
                            studentAnswers[currentKey] = studentAnswer
                            currentKey = None
        else:
            # this is a non-query SQL statement
            # print("Number of rows affected by statement '{}': {}".format(result.statement, result.rowcount))
            pass

    cursor.close()
    cnx.close()

    numPasses = 0 # number of matching answers
    total = 0
    badAnswers = []
    for q in answers.keys():
        if not (q in studentAnswers):
            print(q + ": has no answer")
            total -= 2
            badAnswers.append(q)
        else: 
            ans = answers[q]
            studentAnswer = studentAnswers[q]
            if ans.lower() != studentAnswer.lower():
                print(q + ": Incorrect/not matching answer for: ")
                print("\tExpected: " + ans)
                print("\tReceived: " + studentAnswer)
                total -= 2
                badAnswers.append(q)
            else:
                numPasses = numPasses+1

    # there are missing answers
    if len(answers) != numPasses:
        print("\nERROR: not all questions are answered correctly")
        print("Total number of deduction: " + str(total))
        badAnswers.sort()
        print("Questions with non-matching or missing answers are " + ", ".join(badAnswers))
        sys.exit(len(answers)-numPasses)

