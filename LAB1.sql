-- CREATE TABLE
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    department_id INT
);

ALTER TABLE student 
ADD GENDER VARCHAR(10);
DESC student;

ALTER TABLE student 
MODIFY GENDER VARCHAR(18);
DESC student;

ALTER TABLE student 
RENAME COLUMN student_id TO ID;
DESC student;

ALTER TABLE student 
DROP COLUMN department_id;
DESC student;

SELECT * FROM student;

DROP TABLE student ;