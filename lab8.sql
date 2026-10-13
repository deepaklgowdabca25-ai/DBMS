
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Department VARCHAR(50),
    Marks INT
);

-- Insert records

INSERT INTO Student VALUES
(101, 'Rahul', 'CSE', 85),
(102, 'Pallavi', 'ECE', 90),
(103, 'Anil', 'CSE', 75),
(104, 'Sneha', 'ISE', 88),
(105, 'Kiran', 'ECE', 70),
(106, 'Priya', 'CSE', 92),
(107, 'Arjun', 'ISE', 65),
(108, 'Neha', 'ECE', 80);

-- Display all students

SELECT * FROM Student;

SELECT
    Department,
    COUNT(*) AS Total_Students
FROM Student
GROUP BY Department;

SELECT
    Department,
    AVG(Marks) AS Average_Marks
FROM Student
GROUP BY Department;

SELECT
    Department,
    SUM(Marks) AS Total_Marks
FROM Student
GROUP BY Department;


SELECT
    Department,
    AVG(Marks) AS Average_Marks
FROM Student
GROUP BY Department
HAVING AVG(Marks) > 80;

SELECT
    Department,
    COUNT(*) AS Total_Students
FROM Student
GROUP BY Department
HAVING COUNT(*) > 2;


SELECT *
FROM Student
ORDER BY Marks ASC;


SELECT *
FROM Student
ORDER BY Marks DESC;

SELECT *
FROM Student
ORDER BY Student_Name ASC;

SELECT
    Department,
    COUNT(*) AS Total_Students,
    AVG(Marks) AS Average_Marks
FROM Student
GROUP BY Department
HAVING AVG(Marks) > 70
ORDER BY Average_Marks DESC;