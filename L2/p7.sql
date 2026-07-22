drop database if exists kc9july26v1;
create database if not exists kc9july26v1;
use kc9july26v1;

create table if not exists student
(
	rno int primary key,
	name varchar(30),
	check ((rno >=1 ) and (rno <= 120))
);

desc student;
insert into student values(1,'amit');
insert into student values(2,'sumit');
insert into student values(123,'neha');

select * from student;
