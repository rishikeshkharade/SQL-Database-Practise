--1. SQL INNER JOIN
SELECT StudentCourse.COURSE_ID, Students.NAME, Students.Age
FROM Students
INNER JOIN StudentCourse ON Students.ROLL_NO = StudentCourse.ROLL_NO;


--2. SQL LEFT JOIN
SELECT Students.NAME, StudentCourse.COURSE_ID
FROM Students
LEFT JOIN StudentCourse ON StudentCourse.ROLL_NO = Students.ROLL_NO;


--3. SQL RIGHT JOIN
SELECT Students.NAME, StudentCourse.COURSE_ID
FROM Students
RIGHT JOIN StudentCourse ON StudentCourse.ROLL_NO = Students.ROLL_NO;


--4. SQL FULL JOIN
SELECT Students.NAME, StudentCourse.COURSE_ID
FROM Students
FULL JOIN StudentCourse ON StudentCourse.ROLL_NO = Students.ROLL_NO;