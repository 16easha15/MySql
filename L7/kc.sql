#DDL

drop database if exists kc_db;
create database if not exists kc_db;
use kc_db;
create table if not exists student
(
	rno int unsigned primary key auto_increment,
	name varchar(30) not null,
	gender enum('m','f') default 'm',
	location varchar(50) default 'mumbai',
	marks tinyint check((marks>=0) && (marks<=100))	
);
desc student;
show create table student;
