CREATE DATABASE `sampledatabase`;

USE `sampledatabase`;

CREATE TABLE `customers` (
    `customerNumber` INT(11) NOT NULL PRIMARY KEY,
    `customerName` VARCHAR(50) NOT NULL,
    `contactLastName` VARCHAR(50) NOT NULL,
    `contactFirstName` VARCHAR(50) NOT NULL,
    `Phone` VARCHAR(50) NOT NULL,
    `AddressLine1` VARCHAR(50) NOT NULL,
    `AddressLine2` VARCHAR(50) DEFAULT NULL,
    `City` VARCHAR(50) NOT NULL,
    `State` VARCHAR(50) DEFAULT NULL,
    `postalCode` VARCHAR(15) DEFAULT NULL,
    `country` VARCHAR(50) NOT NULL,
    `salesRepEmployeeNumber` INT(11) DEFAULT NULL,
    `creditLimit` DECIMAL(10,2) DEFAULT NULL,

)