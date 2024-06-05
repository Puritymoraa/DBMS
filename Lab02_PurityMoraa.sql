#Create Database
Drop database if exists librarydb;
create database librarydb; 

#Use the database   
use librarydb;                
show databases;

 #Create the Books table
create table KingDimeBookandStationery ( 
	BookID int auto_increment primary key,
    Title varchar(225) not null,
    Author varchar(225) not null,
    Year int not null,
    Genre varchar(60) not null,
    Copies int not null
);

#Inserting data into the tables created
Insert into KingDimeBookandStationery (Title, Author, Year, Genre, Copies) values
('The Name of the Wind', 'Patrick Rothfuss', 2007, 'Fantacy', 27),
('Diary of a Wimpy Kid, Roderick Rules', 'Jeff Kinney', 2008, 'Comedy', 10),
('Diary of a Wimpy Kid, The Last Straw', 'Jeff Kinney', 2009, 'Comedy', 5),
('Diary of a Wimpy Kid, Dog Days', 'Jeff Kinney', 2009, 'Comedy', 7),
('Diary of a Wimpy Kid, The Ugly Truth', 'Jeff Kinney', 2010, 'Comedy', 7),
('Vision in White', 'Nora Roberts', 2009, 'Romance', 9),
('How not to Die', 'Gene Stone', 2015, 'Health', 15),
('Revolutionary', 'Christopher Clark', 2023, 'History', 13),
('Pompeii', 'Robert Harries', 2003, 'History', 21),
('God’s Generals, The Revivalists', 'Roberts Liardon', 2008, 'Religion', 11),
('God’s Generals, The Healing Evangelists', 'Roberts Liardon', 2011, 'Religion', 4),
('God’s Generals, The Roaring Reformers', 'Roberts Liardon', 2003, 'Religion', 4);
select *from KingDimeBookandStationery;

 #Create the Borrowers table
create table Borrowers (        
    BorrowersID int auto_increment primary key,
    FirstName varchar(225) not null,
    LastName varchar(225) not null,
    DateOfBirth date not null,
    HomeAdress varchar(225) not null,
    MobileNumber varchar(20) not null,
    Email varchar(225) not null,
    BookID int,
    DateBorrowed datetime not null,
    DateReturned datetime,
    Foreign Key (BookID) References KingDimeBookandStationery (BookID)
);
Insert into Borrowers (FirstName, LastName, DateOfBirth, HomeAdress, MobileNumber, Email, BookID, DateBorrowed, DateReturned) values
('	Purity', 'Moraa', '2000-12-21', 'Nairobi', '+214538576925', 'puritymoraa@gmail.com', 1, '2024-04-02 10:40:00', '2024-04-28 11:30:00'),
('Kinaro', 'Akinyi', '1990-05-11', 'Kilimani', '+11276594535', 'kinaroakinyi@gmail.com', 2, '2024-04-15 09:00:00', '2024-05-05 14:00:00'),
('Sally', 'Awuor', '2012-07-11', 'Westlands', '+233589648392', 'sallyawuor@gmail.com', 3, '2024-04-25 12:14:00', '2024-05-17 09:25:00'),
('Karanja', 'Muema', '2000-02-06', 'Runda', '+254728465734', 'karanjamuema@gmail.com', 4, '2024-04-25 15:30:00', '2024-05-21 15:40:00'),
('Emily', 'Nyanduko', '1987-01-16', 'Karen', '+11287361081', 'emilynyanduko@gmail.com', 5, '2024-04-28 11:10:00', '2024-05-29 15:40:00');
select *from Borrowers;

#QUESTION
#Question 1) How many Diary of a Wimpy Kid books in total did you receive?
select sum(Copies) as Total_WimpyKid_Books
from KingDimeBookandStationery
where Title like 'Diary of a Wimpy Kid%';


#Question 2) How many God’s Generals books in total did you receive?
select sum(Copies) as Total_GodsGenerals_Books
from KingDimeBookandStationery
where Title like 'God’s Generals%';


# Question 3) List the total number of books in each genre that were received during the month you were gone.
select Genre, sum(Copies) as Total_Books
from KingDimeBookandStationery
where Title in (
'The Name of the Wind',
'Diary of a Wimpy Kid, Roderick Rules',
'Diary of a Wimpy Kid, The Last Straw',
'Diary of a Wimpy Kid, Dog Days',
'Diary of a Wimpy Kid, The Ugly Truth',
'Vision in White',
'How not to Die',
'Revolutionary',
'Pompeii',
'God’s Generals, The Revivalists',
'God’s Generals, The Healing Evangelists',
'God’s Generals, The Roaring Reformers'
)
group by Genre;

