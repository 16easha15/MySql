drop database if exists kc;
create database if not exists kc;
use kc;
	
drop table if exists emp;
create table if not exists emp
(
	id int unsigned primary key,
	name varchar(20),
	salary decimal(10,2)
);

insert into emp values
(1,'amit',4000),
(2,'neha',5000),
(3,'seema',3000),
(4,'sumit',4500);

select * from emp;
