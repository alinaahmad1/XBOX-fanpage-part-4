/*Q1 Create a table named STUDENT_INFO with the following columns: */

CREATE TABLE IF NOT EXISTS STUDENT_INFO (
    ID INT(10) PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL PRIMARY KEY,
    DOB DATE NOT NULL PRIMARY KEY,
    INCOME DECIMAL(10, 2) NOT NULL PRIMARY KEY,
    COURSE_ID INT(5) NOT NULL PRIMARY KEY
    );

/*Q2 Create a table named COURSE_INFO with the following columns:*/

CREATE TABLE IF NOT EXISTS COURSE_INFO (
    ID INT(10)  PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL PRIMARY KEY,
    LOCATION VARCHAR(200) NOT NULL PRIMARY KEY,
    STARTDATE DATE NOT NULL PRIMARY KEY,
    TYPE VARCHAR (100) NOT NULL PRIMARY KEY
    );
/*Q3: Alter the STUDENT_INFO table to add new column called ADDRESS with type of
VARCHAR of 200 and default value of “NULL”*/
ALTER TABLE STUDENT_INFO ADD ADDRESS VARCHAR (200) default NULL;

/*Q4: Alter the COURSE_INFO table to extend the name column from 100 to 200*/
ALTER TABLE COURSE_INFO ALTER column NAME VARCHAR(200);

/*Q5: Rename the STUDENT_INFO table into STUDENT*/
RENAME TABLE STUDENT_INFO to STUDENT;

/*Q6 Rename the COURSE_INFO table into COURSE*/
RENAME TABLE COURSE_INFO to COURSE;

/*Q7 Insert THREE new rows into STUDENT table with following information:*/

INSERT INTO STUDENT(ID, NAME, DOB, INCOME, COURSE_ID, ADDRESS) 
VALUES ('1', 'John', '1998-05-01', '1200', '100', 'North'), 
       ('2', 'Mike', '2000-08-15', '1100.15', '200', 'West'), 
       ('3', 'Sam', '1997-11-01', '500', '100', 'South');

/*Q8 Insert FOUR new rows into COURSE table with following information:
*/
INSERT INTO COURSE(ID, NAME, LOCATION, STARTDATE, TYPE) 
VALUES ('100', 'Fundamentals of Web Development', 'Azrieli Pavilion', '2023-09-10', 'mandatory'), 
       ('300', 'Analytical Methods', 'Tory Building', '2023-09-17', 'elective'), 
       ('500', 'Java Programming', 'Tory Building', '2023-09-17', 'elective'), 
       ('700', 'C++ Programming', 'Patterson Hall', '2023-09-10', 'elective');

/*Q9. Update income column for Student number 2 in STUDENT table so his income will be
1000 instead of 1100.15*/
UPDATE STUDENT SET `INCOME` = '1200' WHERE `STUDENT`.`ID` = 2;

/*Q10 Update Location column for Course number 100 in COURSE table so the location will
be Patterson Hall instead of Azrieli Pavilion*/
UPDATE COURSE SET `LOCATION` = 'Patterson Hall' WHERE `COURSE`.`ID` = 100;

/*Q11 . Delete Student Number 2 from STUDENT table*/
DELETE FROM STUDENT WHERE ID = '2';

/*Q12 Delete Course Number 300 from COURSE table*/
DELETE FROM COURSE WHERE ID = '300';

/*Q13 Select all columns from STUDENT table*/
SELECT * FROM STUDENT;

/*Q14 . Select all columns from COURSE table*/
SELECT * FROM COURSE;

/*Q15 Select Student name, DOB and income columns from STUDENT table*/
SELECT NAME, DOB, INCOME FROM STUDENT;

/*Q16 Select Course ID, name and location columns from COURSE table*/
SELECT ID, NAME, LOCATION FROM COURSE;

/*Q17 Select Student ID, Name, DOB and income columns for all Students who have an
income larger than 600 dollars*/
SELECT ID, NAME, DOB, INCOME FROM STUDENT WHERE INCOME > 600;

/*Q18 Select all columns from COURSE table for courses which are elective and located in
Patterson Hall*/
SELECT * FROM COURSE WHERE LOCATION = 'Patterson Hall' AND TYPE = 'elective';

/*Q19 Select Student ID, Name, DOB, Course Name from tables STUDENT, COURSE, (The two
tables will be joined using COURSE_ID column)*/
SELECT 'ID', 'NAME', 'DOB', 'COURSE.NAME' FROM STUDENT INNER JOIN STUDENT ON STUDENT.COURSE_ID = COURSE.ID;

/*Q20 Select Student ID, Name, Course Name, Location and Startdate from tables STUDENT,
COURSE where the student income is greater than 1000 (The two tables will be joined
using COURSE_ID column)*/
SELECT 'ID', 'NAME', 'COURSE.NAME', 'COURSE.LOCATION', 'COURSE.DATE' FROM STUDENT INNER JOIN COURSE ON STUDENT.COURSE_ID = COURSE.ID WHERE INCOME > 1000;

/*Q21 Truncate all data from STUDENT table then select * from the table*/
TRUNCATE TABLE `alina_ahmad_lab05`.`STUDENT`;
SELECT * FROM STUDENT;

/*Q22 Truncate all data from COURSE table then select * from the table*/
TRUNCATE TABLE `alina_ahmad_lab05`.`COURSE`;
SELECT * FROM course;

/*Q23 . Drop table STUDENT table then select * from the table */
DROP TABLE STUDENT;
SELECT * FROM STUDENT;

/*Q24 Drop table COURSE table then select * from the table */
DROP TABLE COURSE;
SELECT * FROM COURSE;
