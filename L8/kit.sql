drop database if exists kit_db;
create database if not exists kit_db;

create table if not exists courses
(
	cid int unsigned primary key,
	cname varchar(50),
	fees decimal(10,2)
);
desc courses;

insert into courses values(1,'python',11000),(2,'java',15000),(3,'js',13000),(4,'yoga',1000);
select * from courses;

create table if not exists students
(
	rno int unsigned primary key,
	name varchar(50),
	cid int unsigned,
	foreign key students(cid) references courses(cid)
);
desc students;

insert into students values(1,'raj',2),(2,'sunil',1),(3,'kavita',3),(4,'anil',1),(5,'sunita',2);
select * from students;

#1
select name,cname from students join courses where students.cid=courses.cid;
select name,cname from students,courses where students.cid=courses.cid;
select name,cname from students natural join courses;

#2
select name from students,courses where students.cid=courses.cid and cname='python';

#3
select name from students,courses where students.cid=courses.cid and cname!='java';

#4
select * from courses left join students on students.cid=courses.cid where rno is null;
