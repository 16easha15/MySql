drop database if exists school_db;
create database if not exists school_db;
use school_db;

create table if not exists students
(
	rno int unsigned primary key,
	name varchar(50),
	class varchar(10),
	marks decimal(5,2)
);
desc students;

insert into students values(101,'Amit','10A',85.5),(102,'Priya','10A',90.0),(103,'Rahul','10B',70.5),(104,'Neha','10B',95.0),(105,'Vikas','10A',60.0);
select * from students;

#1
select * from students;

#2
select name,marks from students;

#3
select rno as RollNumber,marks as Score from students;

#4
select distinct class from students; 

#5
select marks from students where marks>80;

#6
select marks from students where class='10A';

#7
select * from students where name like '%a%';

#8
select * from students where name like 'P%';

#9
select * from students where class='10A' or class='10B';
select * from students where class in('10A','10B');

#10
select * from students where marks between 70 and 90;
select * from students where marks>=70 and marks<=90;

#11
select * from students where marks between 70 and 90 && class in('10A','10C');
select * from students where (marks between 70 and 90) and (class in('10A','10C'));


#12
select * from students order by marks desc;

#13
select * from students order by marks desc limit 2; 
