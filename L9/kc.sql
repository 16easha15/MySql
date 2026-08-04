drop database if exists kc;
create database if not exists kc;
use kc;

create table if not exists java(name varchar(20));
insert into java values("amit"), ("neha"), ("seema");

create table if not exists python(name varchar(20));
insert into python values("amit"), ("sumit"), ("raju"),("shyam");

select * from java;
select * from python;

select name from java 
union
select name from python;

select name from java 
union all
select name from python;

select name from java 
intersect
select name from python;

select name from python
intersect
select name from java;

select name from java
except
select name from python;

select name from python
except
select name from java;


#****v important interview--->because in mysql 8 -> der is no support for intersect and except operators
select java.name from java,python where java.name = python.name;

select java.name from java left join python on java.name = python.name   where python.name is Null;

