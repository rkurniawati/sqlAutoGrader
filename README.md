## Instructions

For this assignment, submit the completed template SQL text file [`answers.sql`](answers.sql). In this file you should include all the SQL statements you use to answer the questions below using the `K9U` database. 

If you haven't set up this database yet, you can use the scripts below to create and populate the database. To do this, first connect to your MySQL server database in DBeaver. Then download the <i>create table</i> and <i>insert data</i> scripts below. Open the <i>create table</i> script and set the active connection (Right-click anywhere in the script, choose Execute/Active Connection, then choose the connection to the RDS). Next, run the script using the 'Execute SQL script' command button (from the menu, choose 'SQL Editor'/'Execute SQL Script'). Do the same steps for the <i>insert data</i> script to populate the table. 

 - [Create table script for the K9U database](.github/scripts/create-tables.sql)
 - [Insert data script for the K9U database](.github/scripts/insert-data.sql)

The K9U database contains 6 tables: DOG, OWNER, MAJOR, COURSE, DEPARTMENT, and MAJORREQ. Make sure that you examine the table information in the picture below before you start this assignment.  

<img src="https://wsu-courses.s3.amazonaws.com/spring2022/cais310/k9u/k9u-dbdesign.png" alt="K9U database design">

The connections between tables are as follows:
 - OWNER and DOG are connected through OwnerID
 - DOG and MAJOR are connected through MajorID
 - MAJOR and MAJORREQ are connected through MajorID,
 - COURSE and DEPARTMENT are connected through DeptID
 - COURSE is connected to itself by the "cross-listed" relationship, where COURSE.XListMajorID and COURSE.XListCourseID is the identifier of the course that is being cross-listed as another course in a different major.
 - COURSE and MAJORREQ are connected through DeptID and CourseID


## Questions

Please answer the following questions, typing your answers in the provided template sql file, [`answers.sql`](answers.sql). If you would like to check your work, you can view the expected results [here](expected-output.txt). 

1. List all of the departments in K9U along with the majors offered by the department. You don't need to include departments that currently do not have a major. Include the department ID, department name, major ID, major name and the major's start year in the result. Order the rows in the result by the department ID and major ID. Hint: you can use an inner join to answer this question.
2. List all of the departments in K9U along with the majors offered by the department. Include all departments, including any departments that currently do not have a major. Include the department ID, department name, major ID, major name and the major's start year in the result. Order the rows in the result by the department ID and major ID. Hint: you can use an outer join to answer this question.
3. List all of the departments in K9U along with the number of majors offered by the department. Include all departments, including any departments that currently do not have a major. Include the department ID, department name, and the number of major in the department in the result. Order the rows in the result descending my the number of majors, then ascending by department ID. Hint: you can use an outer join and grouping to answer this question.
4. List all of the departments in K9U along with the total number of courses offered by the department, as well as the average, minimum, and maximum number of credits of the courses offered by the department. Include all departments, including any departments that currently do not offer any courses.  Include the department ID and department name in the result. Order the rows in the result so that the departments with the largest number of courses are listed first. If there are departments that offer the same number of courses, order these by the department ID. Use RIGHT JOIN to answer this question. 
5. List all majors that do not have any elective courses. Include major ID and major name in your answer. Order the results by major ID. Make sure that you don't have any duplicate rows in the result.
6. List all departments that have majors that do not have any elective courses. Include department ID and department name in your answer. Order the results by department ID. Use a subquery in your answer. 
7. List all dogs who are enrolled in a major that does not have any elective courses. Include dog ID, dog name, and breed in your answer. Order the results by dog ID.  
8. List all dogs who are enrolled in a major that does not have any elective courses. Include owner ID, first name, last name, dog ID, dog name, and breed in your answer. Order the results by dog ID. Use both a join and a subquery in your answer. 
9. List all majors along with the required courses in the major. Include the major ID, major name, department ID, course ID, course name, and the number of credits in the course. A required course in the major will be listed in MAJORREQ table with MAJORREQ.Elective = 0. Order the result ascending by major ID, department ID, and course ID.  
10. List all majors along with the total number of credits from all required courses in the major. Include the major ID, major name, the major's department ID, the number of required courses, and the total number of required credits in the major.  Order the result descending by the number of total credit, then descending by the number of courses. If there are majors with the same number of required total credits and courses, order them ascending by major ID and department ID.    

## Submission and Grading

Submit your assignment in GitHub. To do this, do the following steps listed below. A walkthrough video can be found <a href="https://youtu.be/7egCoQgFoHY" target="_blank">here</a>. 
    - Accept the assignment invitation (link provided on Blackboard).
    - Edit answers.sql file by clicking the _pencil icon_ on the top left. 
    - Paste your answers from your SQL file into answers.sql
    - Save the file by clicking the "Commit" button.
    - A workflow will be triggered by the previous step and the results will be available in the Action tab. 
    - Submit a note in Blackboard when your assignment is ready to grade.
