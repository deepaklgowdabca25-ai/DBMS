CREATE TABLE Student3 (
    ID INT,
    Name VARCHAR(20),
    Marks INT
);

INSERT INTO Student3 VALUES
(1, 'Diganth', 80),
(2, 'Rahul', 60),
(3, 'Kiran', 40);

SELECT * FROM Student3
WHERE Marks BETWEEN 50 AND 80;

SELECT * FROM Student3
WHERE Marks IN (40, 80);

SELECT * FROM Student3
WHERE Name LIKE 'D%';

SELECT Name FROM Student3
WHERE Marks > 70

UNION

SELECT Name FROM Student3
WHERE Marks < 50;