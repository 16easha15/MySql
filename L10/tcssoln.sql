#q1
select location from employee where name='Amit';
select * from employee where location = 'Delhi';
select * from employee where location = (select location from employee where name='Amit');

#q2
select name,salary from employee where salary =(select max(salary) from employee); 

#q3
select * from employee where salary > (select avg(salary) from employee);

#q4
select * from employee where salary > ALL(select salary from employee where gender='f');
select * from employee where salary > (select max(salary) from employee where gender = 'f');

#q5
select * from employee where location in (select location from employee group by location having avg(salary)>50000); 

#q6
select * from employee where salary =(select max(salary) from employee where salary <(select max(salary) from employee));
select * from employee order by salary desc limit 1,1; 

#q7
drop table if exists emp_mumbai;
create table emp_mumbai like employee;
insert into emp_mumbai select * from employee where location='mumbai';
select * from emp_mumbai;

