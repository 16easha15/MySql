drop database if exists payroll_db;
create database if not exists payroll_db;
use payroll_db;

create table if not exists employees
(
	eid int unsigned primary key,
	ename varchar(50),
	salary decimal(10,2),
	dept varchar(50) 
);
desc employees;
select * from employees;

#1
insert into employees values(101,'Alice',500000,'HR');
select * from employees;

#2
insert into employees values(102,'Bob',45000,'IT'),(103,'Charlie',55000,'Finance'),(104,'Darwin',45000,'IT');
select * from employees;

#3
update employees set salary=52000 where ename='Alice';
select * from employees;

#4
update employees set dept='DevOps',salary=salary+2000 where ename='Bob';
select * from employees;

#5
update employees set salary = salary*1.10 where dept='Finance';
select * from employees;

#6
delete from employees where salary<48000;
select * from employees;

#7
update employees set salary=salary*0.95 where dept='HR';
select * from employees;

#8
update employees set salary = salary*1.05 order by salary desc limit 1;
select * from employees;