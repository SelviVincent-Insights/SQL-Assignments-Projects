-- =====================================
-- 1. CREATE DATABASE
-- =====================================

DROP DATABASE IF EXISTS Employee;

CREATE DATABASE Employee;

SHOW DATABASES;


-- =====================================
-- 2. SELECT DATABASE
-- =====================================

USE Employee;


-- =====================================
-- 3. CREATE DEPARTMENTS TABLE
-- =====================================

CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(100) NOT NULL
);


-- =====================================
-- 4. CREATE LOCATION TABLE
-- =====================================

CREATE TABLE Location (
    Location_ID INT AUTO_INCREMENT PRIMARY KEY,
    Location VARCHAR(100) NOT NULL UNIQUE
);


-- =====================================
-- 5. CREATE EMPLOYEES TABLE
-- =====================================

CREATE TABLE Employees (
    Employee_ID INT AUTO_INCREMENT PRIMARY KEY,
    Employee_Name VARCHAR(100) NOT NULL,
    Gender VARCHAR(10) CHECK (Gender IN ('M', 'F')),
    Age INT CHECK (Age >= 18),
    Salary DECIMAL(10,2),
    Designation VARCHAR(100),
    Department_ID INT,
    Location_ID INT,
    Hire_Date DATE DEFAULT (CURRENT_DATE),

    FOREIGN KEY (Department_ID)
    REFERENCES Departments(Department_ID),

    FOREIGN KEY (Location_ID)
    REFERENCES Location(Location_ID)
);


-- =====================================
-- 6. ALTER TABLE - ADD COLUMN
-- =====================================

ALTER TABLE Employees
ADD Email VARCHAR(100);


-- =====================================
-- 7. ALTER TABLE - MODIFY COLUMN
-- =====================================

ALTER TABLE Employees
MODIFY Designation VARCHAR(150);


-- =====================================
-- 8. ALTER TABLE - DROP COLUMN
-- =====================================

ALTER TABLE Employees
DROP COLUMN Age;


-- =====================================
-- 9. RENAME COLUMN
-- =====================================

ALTER TABLE Employees
RENAME COLUMN Hire_Date TO Date_of_Joining;


-- =====================================
-- 10. RENAME TABLE
-- =====================================

RENAME TABLE Departments TO Departments_Info;

RENAME TABLE Location TO Locations;


-- =====================================
-- 11. SHOW TABLES
-- =====================================

SHOW TABLES;


-- =====================================
-- 12. INSERT DEPARTMENT RECORDS
-- =====================================

INSERT INTO Departments_Info
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');


-- =====================================
-- 13. INSERT LOCATION RECORDS
-- =====================================

INSERT INTO Locations (Location)
VALUES
('Chennai'),
('Bangalore'),
('Mumbai'),
('Delhi');


-- =====================================
-- 14. INSERT EMPLOYEE RECORDS
-- =====================================

INSERT INTO Employees
(Employee_Name, Gender, Salary, Designation,
Department_ID, Location_ID, Date_of_Joining, Email)

VALUES
('Arun', 'M', 35000, 'Manager', 1, 1, '2024-01-10', 'arun@gmail.com'),

('Priya', 'F', 30000, 'Developer', 2, 2, '2024-02-15', 'priya@gmail.com'),

('Kumar', 'M', 25000, 'Accountant', 3, 3, '2024-03-20', 'kumar@gmail.com'),

('Divya', 'F', 40000, 'HR Executive', 1, 1, '2024-04-10', 'divya@gmail.com'),

('Ravi', 'M', 45000, 'Software Engineer', 2, 4, '2024-05-15', 'ravi@gmail.com');


-- =====================================
-- 15. DISPLAY EMPLOYEE RECORDS
-- =====================================

SELECT * FROM Employees;


-- =====================================
-- 16. DISPLAY DEPARTMENT RECORDS
-- =====================================

SELECT * FROM Departments_Info;


-- =====================================
-- 17. DISPLAY LOCATION RECORDS
-- =====================================

SELECT * FROM Locations;


-- =====================================
-- 18. CHECK DATABASE TABLES
-- =====================================

SHOW TABLES;


-- =====================================
-- 19. TRUNCATE TABLE (OPTIONAL)
-- =====================================

-- TRUNCATE TABLE Employees;


-- =====================================
-- 20. DROP TABLE (OPTIONAL)
-- =====================================

-- DROP TABLE Employees;


-- =====================================
-- 21. DROP DATABASE (OPTIONAL)
-- =====================================

-- DROP DATABASE Employee;