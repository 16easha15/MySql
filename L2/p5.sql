use kcv1;

drop table if exists stu1;

create table if not exists stu1(eyear enum('fe','se','te','be'));
show warnings;

insert into stu1 values('fe');
insert into stu1 values('SE');
insert into stu1 values('me');

select * from stu1;