#this is soln 2

drop database if exists tcs7july26v2;
create database if not exists tcs7july26v2;
use tcs7july26v2;

create table if not exists emp
(
	eid int primary key,
	ename varchar(30)
);

desc emp;

insert into emp values(10,'amit');
insert into emp values(20,'neha');

select * from emp;