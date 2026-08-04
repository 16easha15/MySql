drop database if exists kit;
create database if not exists kit;
use kit;

create table if not exists student
(
	rno int unsigned primary key auto_increment,
	name varchar(30) not null, 
	marks tinyint unsigned,
	location varchar(30) default 'mumbai',
	gender enum('f', 'm') default 'm',
	eyear enum('fe', 'se', 'te', 'be') default 'te'
);
desc student;

INSERT INTO student (name, marks, location, gender, eyear) VALUES
('Amit', 85, 'pune', 'm', 'fe'),
('Priya', 92, 'delhi', 'f', 'se'),
('Rahul', NULL, 'nagpur', 'm', 'te'),
('Sneha', 76, 'mumbai', 'f', 'be'),
('Karan', 64, 'nashik', 'm', 'fe'),
('Nikita', NULL, 'pune', 'f', 'se'),
('Ravi', 80, 'mumbai', 'm', 'te'),
('Tina', 88, 'thane', 'f', 'be'),
('Arjun', 55, 'navi mumbai', 'm', 'fe'),
('Meena', NULL, 'delhi', 'f', 'se'),

('Vikram', 47, 'pune', 'm', 'te'),
('Neha', 90, 'mumbai', 'f', 'be'),
('Harsh', NULL, 'indore', 'm', 'fe'),
('Divya', 78, 'nagpur', 'f', 'se'),
('Sahil', 69, 'nashik', 'm', 'te'),
('Pooja', NULL, 'thane', 'f', 'be'),
('Yash', 95, 'pune', 'm', 'fe'),
('Kavita', 81, 'mumbai', 'f', 'se'),
('Manish', NULL, 'delhi', 'm', 'te'),
('Anita', 72, 'navi mumbai', 'f', 'be'),

('Rohan', 60, 'thane', 'm', 'fe'),
('Shruti', NULL, 'nagpur', 'f', 'se'),
('Nilesh', 83, 'pune', 'm', 'te'),
('Geeta', 70, 'mumbai', 'f', 'be'),
('Ashwin', 74, 'nashik', 'm', 'fe'),
('Smita', NULL, 'indore', 'f', 'se'),
('Tarun', 66, 'mumbai', 'm', 'te'),
('Lata', 91, 'thane', 'f', 'be'),
('Dinesh', NULL, 'pune', 'm', 'fe'),
('Komal', 87, 'navi mumbai', 'f', 'se');

select * from student;

#q1
select count(*) from student;

#q2
select count(*) from student where location = 'mumbai';

#q3
select count(*) from student where location <> 'mumbai';

# q4
select  location, count(*) from student group by location;

#q5
select gender, count(*) from student group by gender;

#q6
select location,gender, count(*) from student group by location,gender order by location;

#7
select max(marks),min(marks) from student ;

#8
select max(marks) from student where location = "mumbai";

#9
select min(marks) from student where location = "thane";

#10
select location,max(marks),min(marks) from student where marks is not null group by location having min(marks)>50 order by location;

#11
select gender,max(marks),min(marks) from student group by gender;

#12
select sum(marks),avg(marks) from student where gender="m";

