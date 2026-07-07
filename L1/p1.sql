# this is solution to scenario 1

drop database if exists tcs7july26v1;
create database if not exists tcs7july26v1;
use tcs7july26v1;

create table if not exists emp(eid int);
desc emp;

insert into emp values(10);
select * from emp;