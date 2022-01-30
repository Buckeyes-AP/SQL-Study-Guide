CREATE DATABASE sales_3

USE sales_3

CREATE TABLE Customers
(id int  primary key identity (1,1), 
Name varchar (30) NOT NULL, 
OrderTotal decimal NOT NULL default 0 

);

CREATE TABLE Orders
(
	id int primary key identity (1,1),
	Description varchar(80) NULL, 
	OrderTotal decimal NOT NULL default 0, 

	CustomerId int NOT NULL foreign key references Customers(Id) 

);

INSERT INTO Customers (Name, OrderTotal) 
VALUES ('Max Training Technical', 2000)

INSERT INTO Orders (Description, OrderTotal, id)
VALUES ('My First Order', 200, 1)

SELECT *
FROM Customers


SELECT o.id, Description, Name, OrderTotal
FROM Customers c JOIN Orders o 
ON c.id = o.CustomerId