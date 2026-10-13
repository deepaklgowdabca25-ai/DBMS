
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Salary DECIMAL(10,2),
    Department VARCHAR(50)
);

INSERT INTO Employee VALUES
(101, 'Rahul', 30000, 'CSE'),
(102, 'Pallavi', 35000, 'ECE'),
(103, 'Anil', 28000, 'ISE');


SELECT * FROM Employee;

DELIMITER //

CREATE PROCEDURE ShowEmployees()
BEGIN
    SELECT * FROM Employee;
END //

DELIMITER ;

CALL ShowEmployees();

DELIMITER //

CREATE PROCEDURE InsertEmployee(
    IN p_Emp_ID INT,
    IN p_Emp_Name VARCHAR(50),
    IN p_Salary DECIMAL(10,2),
    IN p_Department VARCHAR(50)
)
BEGIN
    INSERT INTO Employee
    (
        Emp_ID,
        Emp_Name,
        Salary,
        Department
    )
    VALUES
    (
        p_Emp_ID,
        p_Emp_Name,
        p_Salary,
        p_Department
    );
END //

DELIMITER ;

CALL InsertEmployee(
    104,
    'Sneha',
    40000,
    'CSE'
);


SELECT * FROM Employee;

DELIMITER //

CREATE PROCEDURE UpdateEmployee(
    IN p_Emp_ID INT,
    IN p_Salary DECIMAL(10,2)
)
BEGIN
    UPDATE Employee
    SET Salary = p_Salary
    WHERE Emp_ID = p_Emp_ID;
END //

DELIMITER ;

CALL UpdateEmployee(
    101,
    45000
);
SELECT * FROM Employee;

DELIMITER //

CREATE PROCEDURE DeleteEmployee(
    IN p_Emp_ID INT
)
BEGIN
    DELETE FROM Employee
    WHERE Emp_ID = p_Emp_ID;
END //

DELIMITER ;


CALL DeleteEmployee(
    104
);

SELECT * FROM Employee;
