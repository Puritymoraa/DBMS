#1.Create a Data Base
Drop database if exists Studentdb;
create database Studentdb; 
#2. Use a Data Base
use Studentdb;

#. Create a table (Domains and Validation)
create table Student(
	StudentId int(8) primary key,
    FirstName varchar(50),
    LastName varchar(50),
    Major varchar(50),
    YearGroup int(4),
    Dob date);


#Populate the table
Insert into Student
values (50292026, 'Peter', 'Rice', 'Computer Science', '2026', '2000-01-27'), 
		(77342026, 'Nanna', 'Abankwa', 'Economics', '2025', '2000-12-21'), 
        (22192024, 'Griffin', 'Morgan', 'Electrical Engeneering', '2024', '2003-06-06'),
        (03122026, 'Nana Ayeyi', 'Djan', 'Business', '2026', '2000-07-13'),
        (00422026, 'Stephane', 'Cudjoe', 'Geography', '2027', '1999-07-13'),
        (33682026, 'Seth', 'Nwolley', 'Physics', '2025', '2004-04-12'),
        (99992024, 'Allotei', 'Allotey', 'Poetry', '2024', '1998-11-6');
        
#update and optimize the database before the deadline hits
update Student set YearGroup =2026 where StudentId = 77342026;
update Student set YearGroup =2026 where StudentId = 00422026;
update Student set Major = 'Computer Science' where StudentId = 03122026;
update Student set LastName = 'Allotey Jnr.' where StudentId = '99992024';

#Delete Seth's information
DELETE FROM Student WHERE StudentId = 33682026;

#Update Peter's date of Birth
update Student set Dob = '2000-01-27' where StudentId = '99992024';

#Add two more students
Insert into Student
values (09542026, 'Purity', 'Kerubo', 'Mechanical Engeneering', '2026', '2003-06-26'),
(78092024, 'Esterina', 'Khoboso', 'Business Administration', '2024', '2000-08-27');

#Add a new atribute called 'DreamCareer' and include one for each student
Alter table Student add DreamCareer varchar(50);
update Student set DreamCareer ='Nursing' where StudentId = 50292026;
update Student set DreamCareer ='Education' where StudentId = 77342026;
update Student set DreamCareer ='Fashion Designer' where StudentId = 22192024;
update Student set DreamCareer ='Surgeon' where StudentId = 03122026;
update Student set DreamCareer ='Chef' where StudentId = 00422026;
update Student set DreamCareer ='Lawyer' where StudentId = 99992024;
update Student set DreamCareer ='Architechture' where StudentId = 09542026;
update Student set DreamCareer ='Musician' where StudentId = 78092024;
Select * from Student;