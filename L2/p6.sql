use kcv1;
drop table if exists cust1;
create table if not exists cust1(
toppings set('sp','cc','tf','bi','or')
);
insert into cust1 values('sp');
insert into cust1 values('tf,sp');
insert into cust1 values('or');
select * from cust1;

#enum --> one of many choices
#set --> 0 or more choices