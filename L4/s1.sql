drop database if exists kitv1;
create database if not exists kitv1;
use kitv1;
create table if not exists emp(eid int primary key,name varchar(20));
desc emp;
insert into emp values(1,'anjali'),(2,'tina');
select * from emp;
