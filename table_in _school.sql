CREATE DATABASE IF NOT EXISTS school_data;

USE school_data;

DROP TABLE IF EXISTS students;

CREATE TABLE students(
    roll_no INT UNIQUE NOT NULL,
    name VARCHAR(30) NOT NULL,
    gender VARCHAR(10),
    marks INT,
    date_of_birth DATE
    CHECK (gender IN('Male', 'Female', 'Unknown'))
);

INSERT INTO students VALUES
    ('1', 'Raj Kumar', 'Male', '93', '2000-11-17'),
    ('2', 'Deep Singh', 'Male', '98', '1996-08-22'),
    ('3', 'Ankit Sharma', 'Male', '76', '2000-02-02'),
    ('4', 'Radhika Gupta', 'Female', '78', '1999-12-03'),
    ('5', 'Payal Goyal', 'Female', '82', '1998=04-21'),
    ('6', 'Diksha Sharma', 'Female', '90', '1999-12-17'),
    ('7', 'Gurpreet Kaur', 'Female', '65', '2000-01-04'),
    ('8', 'Akshay Dhureja', 'Male', '80', '1997-05-05'),
    ('9', 'Shareya Anand', 'Female', '70', '1999-10-08'),
    ('10', 'Parteek Mittal', 'Male', '75', '2000-12-25');