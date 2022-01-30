CREATE DATABASE New_AP; 

Use New_AP

CREATE TABLE Vendors1 (VendorID INT, 
						VendorName VARCHAR (50)); 

CREATE TABLE Invoices1 (InvoiceID INT PRIMARY KEY IDENTITY, 
						VendorID INT NOT NULL, 
						InvoiceDate DATE NULL, 
						InvoiceTotal MONEY NULL DEFAULT 0); 

CREATE INDEX IX_VendorID ON Invoices1 (VendorID); 

CREATE TABLE InvoiceLineItems_Temp
(
	InvoiceID	INT NOT NULL, 
	InvoiceSequence		SMALLINT NOT NULL, 
	InvoiceLineItemAmount MONEY NOT NULL, 
	PRIMARY KEY (InvoiceID, InvoiceSequence) 
); 

CREATE TABLE Vendors2
(
	VendorCode	CHAR(6)	NOT NULL PRIMARY KEY, 
	VendorName	VARCHAR(50)	NOT NULL, 
	CHECK ((VendorCode LIKE '[A-Z][A-Z][0-9][0-9][0-9]') AND (LEFT(VendorCode,2) = LEFT (VendorName,2)))
);

CREATE TABLE Vendors9
(	
	VendorID	INT NOT NULL PRIMARY KEY, 
	VendorName	VARCHAR(50) NOT NULL 
);

CREATE TABLE Invoices9
(
	InvoiceID	INT NOT NULL PRIMARY KEY, 
	VendorID	INT NOT NULL REFERENCES Vendors9 (VendorID), 
	InvoiceTotal MONEY NULL
); 

INSERT INTO Vendors9 (VendorID, VendorName) VALUES (99, 'Test Vendor')
SELECT *
FROM Vendors9;

INSERT Invoices9 (InvoiceID, VendorID, InvoiceTotal) VALUES (1, 99, 100); 

SELECT * 
FROM Invoices9

ALTER TABLE Vendors2
ADD LastTranDate DATE NULL; 
