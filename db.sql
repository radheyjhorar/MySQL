CREATE DATABASE my_school_com;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT NOT NULL,
    CustomerName VARCHAR (255),
    ContactName VARCHAR (255),
    Address VARCHAR (255),
    City VARCHAR (255),
    PostalCode INT UNIQUE,
    Country Varchar (255)
);
