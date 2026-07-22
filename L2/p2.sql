use kcv1;
drop table if exists emp;
create table emp(eid tinyint);
insert into emp values(1);
insert into emp values(120);
insert into emp values(130);
insert into emp values(-10);
insert into emp values(-128);
insert into emp values(-129);

select * from emp;