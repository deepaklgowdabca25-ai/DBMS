CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50)
);

CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Dept_ID INT,
    Marks INT,
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);
INSERT INTO Department VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'ISE'),
(4, 'ME');

INSERT INTO Student VALUES
(101, 'Rahul', 1, 85),
(102, 'Pallavi', 2, 90),
(103, 'Anil', 1, 75),
(104, 'Sneha', 3, 88);

SELECT Student.Student_ID,
       Student.Student_Name,
       Department.Dept_Name
FROM Student
INNER JOIN Department
ON Student.Dept_ID = Department.Dept_ID;

SELECT Student.Student_ID,
       Student.Student_Name,
       Department.Dept_Name
FROM Student
LEFT JOIN Department
ON Student.Dept_ID = Department.Dept_ID;

SELECT Student.Student_ID,
       Student.Student_Name,
       Department.Dept_Name
FROM Student
RIGHT JOIN Department
ON Student.Dept_ID = Department.Dept_ID;

SELECT Student.Student_ID,
       Student.Student_Name,
       Department.Dept_Name
FROM Student
LEFT JOIN Department
ON Student.Dept_ID = Department.Dept_ID

UNION

SELECT Student.Student_ID,
       Student.Student_Name,
       Department.Dept_Name
FROM Student
RIGHT JOIN Department
ON Student.Dept_ID = Department.Dept_ID;

SELECT Student.Student_ID,
       Student.Student_Name,
       Department.Dept_Name
FROM Student
LEFT JOIN Department
ON Student.Dept_ID = Department.Dept_ID

UNION

SELECT Student.Student_ID,
       Student.Student_Name,
       Department.Dept_Name
FROM Student
RIGHT JOIN Department
ON Student.Dept_ID = Department.Dept_ID;

CREATE TABLE Student2 (
    Student_ID INT,
    Student_Name VARCHAR(50),
    Dept_ID INT
);

CREATE TABLE Department2 (
    Dept_ID INT,
    Dept_Name VARCHAR(50)
);

INSERT INTO Student2 VALUES
(101, 'Rahul', 1),
(102, 'Pallavi', 2),
(103, 'Anil', 1);

INSERT INTO Department2 VALUES
(1, 'CSE'),
(2, 'ECE'),
(3, 'ISE');

SELECT *
FROM Student2
NATURAL JOIN Department2;