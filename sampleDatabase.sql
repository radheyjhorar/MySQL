CREATE DATABASE IF NOT EXISTS allInOne;

USE allInOne;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    employeeNumber INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NULL,
    extension VARCHAR(255),
    email VARCHAR(255),
    officeCode INT NOT NULL,
    reportsTo INT,
    jobTitle VARCHAR(255)
);

DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customerNumber INT AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR(255) NOT NULL,
    contactLastName VARCHAR(255) NULL,
    contactFirstName VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT Null,
    addressLine1 VARCHAR(255) NOT NULL,
    addressLine2 VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    postalCode INT,
    country VARCHAR(255),
    salesRepEmployeeNumber INT,
    creditLimit DECIMAL(10, 2)
);