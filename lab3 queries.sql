
CREATE TABLE STUDENT (
    Student_ID INT,
    Student_Name VARCHAR(50),
    Program VARCHAR(20),
    Marks INT,
    Fee_Paid DECIMAL(10,2),
    Date_of_Birth DATE,
    Admission_Date DATE
);

INSERT INTO STUDENT VALUES
(101, 'Diganth', 'BCA', 85, 50000, '2008-05-15', '2023-06-10'),
(102, 'Sushanth', 'BCA', 92, 50000, '2008-11-20', '2023-06-12'),
(103, 'Chiranth', 'BCA', 76, 45000, '2009-02-10', '2023-06-11'),
(104, 'Kushal', 'BCA', 88, 48000, '2008-08-25', '2023-06-15'),
(105, 'Deepak', 'BCA', 65, 40000, '2009-01-30', '2023-06-13');

SELECT * FROM STUDENT;

SELECT Student_Name,
       UPPER(Student_Name) AS Uppercase_Name
FROM STUDENT;

SELECT Student_Name,
       LOWER(Student_Name) AS Lowercase_Name
FROM STUDENT;

SELECT Student_Name,
       LENGTH(Student_Name) AS Name_Length
FROM STUDENT;

SELECT CONCAT(Student_Name, ' - Program ', Program) AS Student_Details
FROM STUDENT;

SELECT Student_Name,
       SUBSTRING(Student_Name, 1, 5) AS First_Five_Characters
FROM STUDENT;

SELECT TRIM('   SQL Functions   ') AS Trimmed_Text;

SELECT Student_Name,
       Marks,
       ROUND(Marks * 1.05) AS Bonus_Marks
FROM STUDENT;

SELECT Student_Name,
       Marks / 10.0 AS Marks_Value,
       CEIL(Marks / 10.0) AS Rounded_Up
FROM STUDENT;

SELECT Student_Name,
       Marks / 10.0 AS Marks_Value,
       FLOOR(Marks / 10.0) AS Rounded_Down
FROM STUDENT;

SELECT Student_Name,
       Marks,
       MOD(Marks, 10) AS Remainder
FROM STUDENT;

SELECT Student_Name,
       Marks,
       ABS(Marks - 80) AS Difference_From_80
FROM STUDENT;

SELECT Student_Name,
       POWER(Marks, 2) AS Marks_Squared
FROM STUDENT;

SELECT Student_Name,
       Date_of_Birth,
       YEAR(Date_of_Birth) AS Birth_Year
FROM STUDENT;

SELECT Student_Name,
       Date_of_Birth,
       MONTH(Date_of_Birth) AS Birth_Month
FROM STUDENT;

SELECT Student_Name,
       Date_of_Birth,
       DAY(Date_of_Birth) AS Birth_Day
FROM STUDENT;

SELECT Student_Name,
       Date_of_Birth,
       TIMESTAMPDIFF(YEAR, Date_of_Birth, CURDATE()) AS Age
FROM STUDENT;

SELECT CURDATE() AS Today;

SELECT COUNT(*) AS Total_Students
FROM STUDENT;

SELECT SUM(Marks) AS Total_Marks
FROM STUDENT;

SELECT AVG(Marks) AS Average_Marks
FROM STUDENT;

SELECT MAX(Marks) AS Highest_Marks
FROM STUDENT;

SELECT MIN(Marks) AS Lowest_Marks
FROM STUDENT;

SELECT Program,
       COUNT(*) AS Total_Students,
       AVG(Marks) AS Average_Marks
FROM STUDENT
GROUP BY Program;

SELECT
    UPPER(Student_Name) AS Student_Name,
    Program,
    Marks,
    ABS(Marks - 80) AS Difference_From_Target,
    YEAR(Date_of_Birth) AS Birth_Year
FROM STUDENT;