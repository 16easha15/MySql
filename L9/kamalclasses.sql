# database
drop database if exists kamalclasses_db;
create database if not exists kamalclasses_db;
use kamalclasses_db;

# parent table
create table if not exists dept
(
did int unsigned primary key,
dname varchar(30) not null
);
insert into dept values(1, 'sales');
insert into dept values(2, 'finance');

# child table
create table if not exists emp
(
eid int unsigned primary key,
ename varchar(20) not null,
reports_to int,
did int unsigned,
foreign key(did) references dept(did)
on delete cascade on update cascade
);

insert into emp values(100, 'kamal', null, 1);
insert into emp values(101, 'vishal', 100, 1);
insert into emp values(102, 'amit', 100, 2);
insert into emp values(103, 'neha', 101, 1);
insert into emp values(104, 'pooja', 102, 2);

# data
select * from dept;
select * from emp;

# q1
select ename, did from emp;

# q2
select emp.ename, dept.dname from emp , dept where emp.did = dept.did;
select emp.ename, dept.dname from emp join dept on emp.did = dept.did;
select emp.ename, dept.dname from emp inner join dept on emp.did = dept.did;
select emp.ename, dept.dname from emp join dept using (did);
select emp.ename, dept.dname from emp natural join dept ;

#q3
select emp.ename, dept.dname from emp , dept;
select emp.ename, dept.dname from emp join dept;
select emp.ename, dept.dname from emp cross join dept;


#q4
select emp.ename from emp , dept where (emp.did = dept.did) && (dept.dname = 'sales');
select emp.ename from emp inner join dept on (emp.did = dept.did) && (dept.dname = 'sales');

 
#q5
select emp.ename from emp , dept where (emp.did = dept.did) && (dept.dname != 'sales');
select emp.ename from emp inner join dept on (emp.did = dept.did) && (dept.dname != 'sales');
select emp.ename from emp inner join dept on (emp.did = dept.did) && (dept.dname <> 'sales');

#6
select emp.ename,emp.reports_to from emp ;
select emp.ename as EmpName,reports_to as Mgrid from emp;

#7
select a.ename , b.ename from emp a,emp b where a.reports_to = b.eid;

select a.ename as Emp, b.ename as Mgr from emp a inner join emp b on a.reports_to = b.eid;

#8
select a.ename as Emp, b.ename as Mgr from emp a left join emp b on a.reports_to = b.eid;

#9
select  distinct b.ename as Mgr from emp a join emp b on a.reports_to = b.eid;












