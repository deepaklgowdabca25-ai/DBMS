CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    department_id INT
);
INSERT INTO student
(student_id, student_name, email, phone,department_id )
VALUES
(201, 'Rahul', 'rahul201@univ.edu', '9876543210', '405');

INSERT INTO student
(student_id, student_name, email, phone,department_id )
VALUES
(202, 'sharma', 'sharma202@univ.edu', '9901997355', '235');

UPDATE student
SET phone=7795426633
WHERE student_id=202;

DELETE FROM student
WHERE student_id=202;

SELECT * FROM student;

