#DML
use kc_db;
truncate student;

#insert 
insert into student values(default,'amit',default,default,50);
insert into student value(default,'neha','f','pune',52);
insert student value(default,'raju','m','chennai',92);
insert into student(name,marks) values('sumit',70);
insert into student set name='seema',gender='f',marks=80,location='pune';
select * from student;

#update
update student set marks = marks-5;
update student set marks = marks+2 where location='chennai';
update student set marks = marks+5 order by marks asc limit 1;
select * from student;

#delete
delete from student where location='chennai';
select * from student;

#replace
replace into student values(5,'jack','m','mumbai',85);
replace into student values(default,'jill','f','pune',85);
select * from student;