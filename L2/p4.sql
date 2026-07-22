use kcv1;
drop table if exists emp2;
create table if not exists emp2(fname char(10), lname varchar(10));
insert into emp2 values('raj','sharma');
insert into emp2 values('bala','rao');
select * from emp2;