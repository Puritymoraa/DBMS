-- Constraints are rules/conditions that add a level of validation and restriction of the data
-- that is added to the database

-- 1. Not null constraint

DROP DATABASE IF EXISTS ashesi_database;
CREATE DATABASE ashesi_database; 
USE ashesi_database;

CREATE TABLE Students(
    student_id INT(8) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    age INT(3) NOT NULL
);

-- Populate the table
INSERT INTO Students(student_id, first_name, last_name, dob, age) 
VALUES (9542026, 'Purity', 'Kinaro', '2003-06-26', 14);
INSERT INTO Students(student_id, first_name, last_name, dob, age)
VALUES (78092026, 'Esterina', 'Khoboso', '2002-07-28', 12), 
       (87362026, 'Mary', 'Mwikali', '2000-08-30', 13);

-- 2. Unique constraints: Restricts user from inputting duplicate data
CREATE TABLE myStudents(
    student_id INT(8) UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE
);

INSERT INTO myStudents(student_id, first_name, last_name, dob) 
VALUES (9542026, 'Purity', 'Kinaro', '2003-06-26');
INSERT INTO myStudents(student_id, first_name, last_name, dob)
VALUES (78092026, 'Esterina', 'Khoboso', '2002-07-28'), 
       (87362026, 'Mary', 'Mwikali', '2000-08-30');

-- 3. Primary Key constraint: It is a column that is not null and is unique. Used to represent the whole row
-- A primary key constraint is used to uniquely identify each row in a database table.
-- A primary key constraint can be defined on one or more columns in a table, but it must 
-- be unique and not null for all rows in the table.

CREATE TABLE StudentsPrikey(
    student_id INT(8) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE
);

INSERT INTO StudentsPrikey(student_id, first_name, last_name, dob) 
VALUES (9542026, 'Purity', 'Kinaro', '2003-06-26');
INSERT INTO StudentsPrikey(student_id, first_name, last_name, dob)
VALUES (78092026, 'Esterina', 'Khoboso', '2002-07-28'), 
       (87362026, 'Mary', 'Mwikali', '2000-08-30');

-- 4. Check constraint: ensures that the values in a specific column meet a certain condition.
CREATE TABLE Studentcheck(
    student_id INT(8) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    age INT CHECK (age >= 20)
);

INSERT INTO Studentcheck(student_id, first_name, last_name, dob, age) 
VALUES (9542026, 'Purity', 'Kinaro', '2003-06-26', 34);
INSERT INTO Studentcheck(student_id, first_name, last_name, dob, age)
VALUES (78092026, 'Esterina', 'Khoboso', '2002-07-28', 21), 
       (87362026, 'Mary', 'Mwikali', '2000-08-30', 23);

-- 5. Default constraint: specifies a default value for a column.
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    Name VARCHAR(12) DEFAULT 'ama',
    product_id INT,
    quantity INT
);

INSERT INTO orders (order_id, product_id, quantity) VALUES (1, 101, 5);
INSERT INTO orders (order_id, product_id, quantity) VALUES (2, 102, 10);

-- Query the tables
SELECT * FROM Students;
SELECT * FROM Studentcheck;
SELECT * FROM myStudents;
SELECT * FROM StudentsPrikey;
SELECT * FROM orders;

-- 1. Drop not null constraint to allow values that are null
ALTER TABLE Students MODIFY age INT(3) NULL;

-- 2. Drop Unique constraint
ALTER TABLE myStudents DROP INDEX student_id;

-- 3. Drop Primary key constraint
ALTER TABLE StudentsPrikey MODIFY student_id INT(8) NULL;
ALTER TABLE StudentsPrikey DROP PRIMARY KEY;

-- 4. Drop check constraint
ALTER TABLE Studentcheck MODIFY age INT(3);
ALTER TABLE Studentcheck DROP CHECK (age >= 20);

-- Query the tables again after dropping constraints
SELECT * FROM Students;
SELECT * FROM Studentcheck;
SELECT * FROM myStudents;
SELECT * FROM StudentsPrikey;
SELECT * FROM orders;
