CREATE TABLE Student (
    ID INT,
    Name VARCHAR(20),
    DOB DATE
);

INSERT INTO Student VALUES
(1, 'Diganth', '2005-05-10'),
(2, 'Rahul', '2004-08-15'),
(3, 'Kiran', '2005-01-20');

SELECT CAST(ID AS CHAR) AS ID_String
FROM Student;

SELECT CURDATE();
SELECT NOW();

SELECT Name, YEAR(DOB) AS Birth_Year
FROM Student;

SELECT Name, MONTH(DOB) AS Birth_Month
FROM Student;

SELECT Name, DAY(DOB) AS Birth_Day
FROM Student;

SELECT Name, DATE_FORMAT(DOB, '%d-%m-%Y') AS Formatted_Date
FROM Student;

SELECT Name, DATE_ADD(DOB, INTERVAL 10 DAY) AS New_Date
FROM Student;

SELECT Name, DATE_SUB(DOB, INTERVAL 10 DAY) AS Old_Date
FROM Student;