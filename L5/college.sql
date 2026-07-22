drop database if exists college_db;
create database if not exists college_db;
use college_Db;

create table if not exists students
(
	student_id int unsigned primary key,
	name varchar(50),
	course varchar(40),
	fees decimal(8,2) unsigned 
);

desc students;
show create table students\G

insert into students values(101,'Amit','Java',12000);
insert into students values(102,'Neha','Python',10000);
insert into students values(103,'Rahul','Data Science',15000);

select * from students;

rename table students to college_students;
select * from college_students;

truncate table college_students;
select * from college_students;

#db rename to college_database
#there is no command