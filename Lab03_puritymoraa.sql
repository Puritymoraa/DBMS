drop database if exists employeemanagementdb;
create database employeemanagementdb;
use employeemanagementdb;

create table employee (
    EmpID int primary key auto_increment,
    FirstName varchar(50) not null,
    LastName varchar(50) not null,
    Email varchar(100) unique not null,
    Department varchar(50) default 'unassigned',
    Salary decimal(10, 2) not null check (Salary >= 2000.00)
);

insert into employee (EmpID, FirstName, LastName, Email, Department, Salary) values
(1, 'Kwame', 'Nkrumah', 'kwame.nkrumah@gmail.com', 'Engineering', 5000.00),
(2, 'Ama', 'Adu', 'amaadu@gmail.com', 'Marketing', 4000.00),
(3, 'Yao', 'Mensah', 'yao.mensah123@example.com', 'Sales', 4500.00),
(4, 'Kendra', 'Antwi', 'ken.antwi@gmail.com', 'unassigned', 4800.00),
(5, 'Abigail', 'Sarpong', 'a.sarp89ong@example.com', 'Marketing', greatest(2000.00, 1200.00)), -- Salary adjusted
(6, 'Kofi', 'Mensah', 'kofi.mensah@gmail.com', 'HR', 4600.00),
(7, 'Amina', 'Asante', 'amina.asanteee@yahoo.com', 'Engineering', 4700.00),
(8, 'Esi', 'Owusu', 'esi.owusu@gmail.com', 'Marketing', 4300.00),
(9, 'Amalia', 'Kusi', 'amalia.kusi@yahoo.com', 'Sales', 4400.00),
(10, 'Kwesi', 'Arthur', 'kwesi.arthur@example.com', 'HR', 4500.00),
(11, 'Nana', 'Akuffo', 'nanakuffo@gmail.com', 'unassigned', 4900.00),
(12, 'Akua', 'Boakye', 'akua.boakye@yahoo.com', 'Marketing', greatest(2000.00, 1500.00)), -- Salary adjusted
(13, 'Fiifi', 'Baah', 'fiifi.baah@example.com', 'Sales', 4000.00),
(14, 'Efua', 'Dapaah', 'efua.dapaah@gmail.com', 'HR', 4300.00),
(15, 'Kweku', 'Asamoah', 'kweku.asamoah@yahoo.com', 'unassigned', greatest(2000.00, 50.00)), -- Salary adjusted
(16, 'Kwabena', 'Osei', 'kwabena.osei@example.com', 'Marketing', 4200.00),
(17, 'Serwaa', 'Amihere', 'serwaa.amihere@gmail.com', 'Sales', greatest(2000.00, 2.00)), -- Salary adjusted
(18, 'Akosua', 'Kwarteng', 'akosua.kwarteng@yahoo.com', 'unassigned', 4300.00),
(19, 'Kojo', 'Twum', 'kojo.twum@example.com', 'Engineering', greatest(2000.00, 500.00)), -- Salary adjusted
(20, 'Nana', 'Kofi','nanakofi@gmail.com', 'Marketing', 4400.00);

select *from employee;

-- QUESTION 1: Find all employees whose first name starts with 'K'
select *from employee where FirstName like 'K%';

-- QUESTION 2: Find all employees whose last name ends with 'ah'
select * from employee where LastName like '%ah';

-- QUESTION 3: Find all employees whose first name has exactly 4 characters.
select * from employee where length(FirstName) = 4;

-- QUESTION 4: Find all employees whose last name contains 'sa'
select * from employee where LastName like '%sa%';

-- QUESTION 5: Find all employees whose email contains 'yahoo'.
select * from employee where email like '%yahoo%';

-- QUESTION 6: Find all employees in the Engineering department
select * from employee where department = 'Engineering';

-- QUESTION 7: Find all employees whose first name starts with 'A' and ends with 'a'
select * from employee where FirstName like 'A%a';

-- QUESTION 8: Find all employees whose last name starts with 'A', 'K', or 'M'
select * from employee where LastName like 'A%' or LastName like 'K%' or LastName like 'M%';

-- QUESTION 9: Find all employees whose first name does not start with 'A'
select * from employee where firstname not like 'A%';

-- QUESTION 10: Find all employees whose first name has a vowel (a, e, i, o, u) as the second character.
select * from employee where substring(FirstName, 2, 1) in ('a', 'e', 'i', 'o', 'u');


