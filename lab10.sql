CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(30),
    Salary INT,
    Department VARCHAR(30)
);

CREATE TABLE Employee_Audit (
    Action_Type VARCHAR(20),
    Emp_ID INT,
    Emp_Name VARCHAR(30),
    Action_Time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- BEFORE INSERT

DELIMITER //

CREATE TRIGGER Before_Insert
BEFORE INSERT ON Employee
FOR EACH ROW
BEGIN
    IF NEW.Salary < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END //

DELIMITER ;


-- AFTER INSERT

DELIMITER //

CREATE TRIGGER After_Insert
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Audit(Action_Type, Emp_ID, Emp_Name)
    VALUES ('INSERT', NEW.Emp_ID, NEW.Emp_Name);
END //

DELIMITER ;


-- Insert some records

INSERT INTO Employee VALUES
(101, 'Rahul', 30000, 'CSE');

INSERT INTO Employee VALUES
(102, 'Pallavi', 35000, 'ECE');


-- BEFORE UPDATE

DELIMITER //

CREATE TRIGGER Before_Update
BEFORE UPDATE ON Employee
FOR EACH ROW
BEGIN
    IF NEW.Salary < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END //

DELIMITER ;


-- AFTER UPDATE

DELIMITER //

CREATE TRIGGER After_Update
AFTER UPDATE ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Audit(Action_Type, Emp_ID, Emp_Name)
    VALUES ('UPDATE', NEW.Emp_ID, NEW.Emp_Name);
END //

DELIMITER ;


-- Update employee

UPDATE Employee
SET Salary = 40000
WHERE Emp_ID = 101;


-- BEFORE DELETE

DELIMITER //

CREATE TRIGGER Before_Delete
BEFORE DELETE ON Employee
FOR EACH ROW
BEGIN
    IF OLD.Salary > 50000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Employee cannot be deleted';
    END IF;
END //

DELIMITER ;


-- AFTER DELETE

DELIMITER //

CREATE TRIGGER After_Delete
AFTER DELETE ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Audit(Action_Type, Emp_ID, Emp_Name)
    VALUES ('DELETE', OLD.Emp_ID, OLD.Emp_Name);
END //

DELIMITER ;


-- Delete employee

DELETE FROM Employee
WHERE Emp_ID = 102;


-- Display employee details

SELECT * FROM Employee;

-- Display trigger actions

SELECT * FROM Employee_Audit;