CREATE DATABASE geeksforgeeks;

USE geeksforgeeks;

CREATE TABLE employee (
    Id INT(10),
    Name VARCHAR(55),
    Email VARCHAR(100),
    Department INT(10)
);

CREATE TABLE dept (
    Id INT(10),
    Name VARCHAR(55),
    hodId INT(10),
    Profit INT(20)
);

DESC employee;
DESC dept;

