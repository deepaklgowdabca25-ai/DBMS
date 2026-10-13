CREATE TABLE Student1 (
    ID INT,
    Name VARCHAR(20),
    Marks INT
);

INSERT INTO Student1 VALUES
(1, 'Diganth', 80),
(2, 'Rahul', 60),
(3, 'Kiran', 40);

SELECT Marks + 10 FROM Student1;
SELECT Marks - 10 FROM Student1;
SELECT Marks * 2 FROM Student1;
SELECT Marks / 2 FROM Student1;

SELECT * FROM Student1
WHERE Marks > 50;

SELECT * FROM Student1
WHERE Marks < 50;

SELECT * FROM Student1
WHERE Marks = 80;

SELECT * FROM Student1
WHERE Marks > 50 AND Marks < 90;

SELECT * FROM Student1
WHERE Marks = 80 OR Marks = 40;

SELECT * FROM Student1
WHERE NOT Marks = 80;