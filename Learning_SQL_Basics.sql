#Comments using hashtags
#1.Create a Data Base

Drop database if exists ashesi_database;
create database ashesi_database; 

#2. Use a Data Base
use ashesi_database;

#. Create a table (Domains and Validation)
create table Students(
student_id int(8) primary key,
first_name varchar(50),
last_name varchar(50),
dob date
);

#Populate the table
Insert into Students(student_id, first_name, last_name, dob) 
values(09542026, 'Purity', 'Kinaro', '2003-06-26');
Insert into Students
values (78092026, 'Esterina', 'Khoboso', '2002-07-28'), (87362026, 'Mary', 'Mwikali', '2000-08-30'); 
#Perform manipulation on the table
#Select * from Students;
#Delete from Students where last_name= 'Mwikali';
#update Students set first_name ='Kilonzi' where student_id = '87362026';
#Select * from Students;
#Alter table Students add year_group int; #can use drop to delete a row in the place of add.