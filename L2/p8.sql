drop database if exists kc7july26v2;
create database if not exists kc7july26v2;
use kc7july26v2;

create table if not exists student
(
	rno tinyint primary key,
	name varchar(50),
	marks tinyint,
	check ((rno >=1) and (rno <=120)),
	check ((marks >=0) and (marks <=100))
);

desc student;

insert into student values(1,'amit',80);
insert into student values(2,'sumit',90);
insert into student values(3,'neha',110);

select * from student;
