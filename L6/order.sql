drop database if exists order_db;
create database if not exists order_db;
use order_db;

create table if not exists orders(
	oid int unsigned primary key,
	cname varchar(50),
	amount decimal(10,2),
	status varchar(50)
);
desc orders;
#1
insert into orders values(501,'Ravi',1200,'Pending');

#2
insert into orders 
values(502,'Neha',2200,'Pending'),(503,'Amit',1800,'Shipping');
select * from orders;

#3
update orders set status='Shipped' where oid=501;
select * from orders;

#4
update orders set amount=2500,status='Paid' where oid=502;
select * from orders;

#5
update orders set amount = amount+50 where status ='Pending';
select * from orders;

#6
delete from orders where amount<=1500;
select * from orders;

#7
update orders set amount=amount*0.90;
select * from orders;

#8
update orders set status='Completed' where status='Paid';
select * from orders;

#9
update orders set status='Cancel' where cname like '%a';
select * from orders;


