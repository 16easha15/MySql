# q1
select max(marks) from student;
select * from student where marks = 95;

select * from student where marks = (select max(marks) from student);

# q2
select location, max(marks) from student group by location;
select * from student where (location='pune') and (marks=95);
select * from student where (location='thane') and (marks=91);

select * from student where marks IN (select max(marks) from student group by location);
select * from student where marks =ANY (select max(marks) from student group by location);
select * from student where marks =SOME (select max(marks) from student group by location);


#3
select location,gender,min(marks) from student group by location,gender; 
select * from student where marks IN (select min(marks) from student group by location,gender) order by location,gender;

#4 	as clause 	columns+data	keys xxx
drop table if exists student_mumbai ;
create table student_mumbai as (select * from student where location='mumbai');
desc student_mumbai;
select * from student_mumbai;

#4.1
drop table if exists student_mumbai1;
create table student_mumbai1 like student;
insert into student_mumbai1 (select * from student where location='mumbai');
desc student_mumbai1;
select * from student_mumbai1;
