drop database if exists tcs;
create database if not exists tcs;
use tcs;

-- Create Employee Table
CREATE TABLE IF NOT EXISTS employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    gender ENUM('m', 'f'),
    location VARCHAR(50),
    salary DECIMAL(15,2)
);
desc employee;

INSERT INTO employee VALUES (1, 'Amit', 'm', 'Delhi', 60000);
INSERT INTO employee VALUES (2, 'Neha', 'f', 'Mumbai', 55000);
INSERT INTO employee VALUES (3, 'Raj', 'm', 'Delhi', 45000);
INSERT INTO employee VALUES (4, 'Priya', 'f', 'Chennai', 30000);
INSERT INTO employee VALUES (5, 'Vikram', 'm', 'Mumbai', 70000);
INSERT INTO employee VALUES (6, 'Sonal', 'f', 'Bangalore', 35000);
INSERT INTO employee VALUES (7, 'Karan', 'm', 'Chennai', 40000);
INSERT INTO employee VALUES (8, 'Deepa', 'f', 'Delhi', 50000);
INSERT INTO employee VALUES (9, 'Anil', 'm', 'Kolkata', 25000);
INSERT INTO employee VALUES (10, 'Meena', 'f', 'Mumbai', 65000);
INSERT INTO employee VALUES (11, 'Ravi', 'm', 'Kolkata', 48000);
INSERT INTO employee VALUES (12, 'Divya', 'f', 'Bangalore', 56000);
INSERT INTO employee VALUES (13, 'Suresh', 'm', 'Chennai', 59000);
INSERT INTO employee VALUES (14, 'Pooja', 'f', 'Delhi', 62000);
INSERT INTO employee VALUES (15, 'Arjun', 'm', 'Bangalore', 41000);
INSERT INTO employee VALUES (16, 'Sneha', 'f', 'Chennai', 47000);
INSERT INTO employee VALUES (17, 'Manoj', 'm', 'Mumbai', 53000);
INSERT INTO employee VALUES (18, 'Isha', 'f', 'Kolkata', 31000);
INSERT INTO employee VALUES (19, 'Nikhil', 'm', 'Delhi', 58000);
INSERT INTO employee VALUES (20, 'Kajal', 'f', 'Mumbai', 52000);

select * from employee;















