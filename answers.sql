-- Put your answer following the question, as shown below in example questions #1 and #2. Be sure to leave the lines marked with "Do not remove" untouched and write your answer below.
-- NOTE: Remember to put a semicolon at the end of your queries!

-- enable error on GROUP BY if the SELECT/HAVING expression contains non-aggregate data
SET sql_mode=(SELECT CONCAT('ONLY_FULL_GROUP_BY,',@@sql_mode,''));

-- 1. List all of the departments in K9U along with the majors offered by the department. You don't need to include departments that currently do not have a major. Include the department ID, department name, major ID, major name and the major's start year in the result. Order the rows in the result by the department ID and major ID. Hint: you can use an inner join to answer this question.

SELECT '**** Question 1' AS ' '; -- Do not remove - this is a marker for the results of this question in the output


-- 2. List all of the departments in K9U along with the majors offered by the department. Include all departments, including any departments that currently do not have a major. Include the department ID, department name, major ID, major name and the major's start year in the result. Order the rows in the result by the department ID and major ID. Hint: you can use an outer join to answer this question.

SELECT '**** Question 2' AS ' '; -- Do not remove - this is a marker for the results of this question in the output


-- 3. List all of the departments in K9U along with the number of majors offered by the department. Include all departments, including any departments that currently do not have a major. Include the department ID, department name, and the number of major in the department in the result. Order the rows in the result descending my the number of majors, then ascending by department ID. Hint: you can use an outer join and grouping to answer this question.

SELECT '**** Question 3' AS ' '; -- Do not remove - this is a marker for the results of this question in the output


-- 4. List all of the departments in K9U along with the total number of courses offered by the department, as well as the average, minimum, and maximum number of credits of the courses offered by the department. Include all departments, including any departments that currently do not offer any courses.  Include the department ID and department name in the result. Order the rows in the result so that the departments with the largest number of courses are listed first. If there are departments that offer the same number of courses, order these by the department ID. Use RIGHT JOIN to answer this question. 

SELECT '**** Question 4' AS ' '; -- Do not remove - this is a marker for the results of this question in the output


-- 5. List all majors that do not have any elective courses. Include major ID and major name in your answer. Order the results by major ID. Make sure that you don't have any duplicate rows in the result.

SELECT '**** Question 5' AS ' '; -- Do not remove - this is a marker for the results of this question in the output


-- 6. List all departments that have majors that do not have any elective courses. Include department ID and department name in your answer. Order the results by department ID. Use a subquery in your answer. 

SELECT '**** Question 6' AS ' '; -- Do not remove - this is a marker for the results of this question in the output


-- 7. List all dogs who are enrolled in a major that does not have any elective courses. Include dog ID, dog name, and breed in your answer. Order the results by dog ID.  

SELECT '**** Question 7' AS ' '; -- Do not remove - this is a marker for the results of this question in the output


-- 8. List all dogs who are enrolled in a major that do not have any elective courses. Include owner ID, first name, last name, dog ID, dog name, and breed in your answer. Order the results by dog ID. Use a join and a subquery in your answer. 
 

SELECT '**** Question 8' AS ' '; -- Do not remove - this is a marker for the results of this question in the output


-- 9. List all majors along with the required courses in the major. Include the major ID, major name, department ID, course ID, course name, and the number of credits in the course. A required course in the major will be listed in MAJORREQ table with MAJORREQ.Elective = 0. Order the result ascending by major ID, department ID, and course ID.  

SELECT '**** Question 9' AS ' '; -- Do not remove - this is a marker for the results of this question in the output


-- 10. List all majors along with the total number of credits from all required courses in the major. Include the major ID, major name, the major's department ID, the number of required courses, and the total number of required credits in the major.  Order the result descending by the number of total credit, then descending by the number of courses. If there are majors with the same number of required total credits and courses, order them ascending by major ID and department ID. 

SELECT '**** Question 10' AS ' '; -- Do not remove - this is a marker for the results of this question in the output

