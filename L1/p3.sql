#this is soln 3

drop database if exists tcs7july26v3;
create database if not exists tcs7july26v3;
use tcs7july26v3;

create table emp(eid int primary key,ename varchar(30),salary double);
desc emp;
insert into emp values(10,'alok',150000);
insert into emp values(20,'jadu',2000000);
select * from emp;