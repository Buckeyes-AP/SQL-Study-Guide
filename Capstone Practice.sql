use sales;

CREATE TABLE Customers (
	Id int primary key identity(1,1),
	Name varchar(30) NOT NULL,
	Sales decimal NOT NULL default 0

);

CREATE TABLE Orders (
	Id int primary key identity(1,1), 
	Description varchar(80) NULL,
	OrderTotal decimal NOT NULL default 0,

	CustomerId int NOT NULL foreign key references Customers(Id)
);

INSERT INTO Customers (Name, Sales)
	VALUES ('MAX Technical Training', 1000);

SELECT * from Customers; 

INSERT INTO Orders (Description, OrderTotal, CustomerId)
	VALUES ('My First Order', 200, 1);

SELECT * FROM Orders;

-- Display order id, description, ordertotal, customer name

SELECT o.Id, Description, OrderTotal, Name
FROM Orders o 
JOIN Customers c 
ON c.Id = o.CustomerId





