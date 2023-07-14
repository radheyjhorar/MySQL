CREATE TABLE Employees(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL,
    gender VARCHAR(9),
    salary DECIMAL(10,2),
    country VARCHAR(10)
    check(gender in ('Male', 'Female', 'Unknown'))
);

INSERT INTO Employees
VALUES  ('1', 'Mark', 'Male', '5000', 'USA'),
        ('2', 'John', 'Male', '4500', 'India'),
        ('3', 'Pam', 'female', '5500', 'USA'),
        ('4', 'Sara', 'Female', '4000', 'India'),
        ('5', 'Todd', 'Male', '3500', 'India'),
        ('6', 'Mary', 'Female', '5000', 'UK'),
        ('7', 'Ben', 'Male', '6500', 'UK'),
        ('8', 'Elizabeth', 'Female', '7000', 'USA'),
        ('9', 'Tom', 'Male', '5500', 'UK'),
        ('10', 'Ron', 'Male', '5000', 'USA');
    