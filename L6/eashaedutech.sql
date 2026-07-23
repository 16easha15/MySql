drop database if exists eashaedutech;
create database if not exists eashaedutech;
use eashaedutech;
create table if not exists courses
(
	cid int unsigned primary key,
	cname varchar(100) not null,
	cfees decimal(10,2) unsigned
);
desc courses;

insert into courses values(1,'java',12000);
insert into courses values(2,'android',12000);
insert into courses values(3,'springboot',12000);
select * from courses;

create table if not exists student
(
	sid int unsigned primary key,
	name varchar(100) not null,
	location varchar(100) not null,
	cid int unsigned,
	foreign key(cid) references courses(cid)
	on delete cascade
	on update cascade
);
desc student;
insert into student values(100,'vinayak','airoli',1);
insert into student values(101,'swaraj','thane',3);
insert into student values(102,'raju','kalyan',20);

select * from student;

delete from courses where cid = 3;
select * from student;

update courses set cid=10 where cid = 1;
select * from student;


