use kcv1;
drop table if exists emp1;
create table emp1(eid tinyint unsigned check (eid > 0));

insert into emp1 values(1);
insert into emp1 values(120);
insert into emp1 values(130);
insert into emp1 values(250);
insert into emp1 values(-128);
insert into emp1 values(260);
insert into emp1 values(0);

select * from emp1;

