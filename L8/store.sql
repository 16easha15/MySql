drop database if exists store_db;
create database if not exists store_db;
use store_db;

create table if not exists products
(
	pid int unsigned primary key,
	pname varchar(50),
	pprice decimal(10,2)
);
desc products;

insert into products values(1,'ssd',2500),(2,'pd',200);
select * from products;

create table if not exists customers
(
	cid int primary key,
	cname varchar(50),
	clocation varchar(50),
	pid int unsigned,
	foreign key(pid) references products(pid)
);
desc customers;

insert into customers values(1,'amit','thane',1),(2,'sumit','kalyan',2),(3,'neha','thane',1),(4,'kamal','kalyan',NULL),(5,'sneha','thane',NULL);

select * from customers;

#1
select * from customers where pid is null;

#2
select * from customers where pid is not null;

#3
select * from customers natural join products;
select * from customers,products where customers.pid=products.pid;
select * from customers join products using(pid);
select * from customers inner join products on customers.pid=products.pid;
select * from customers join products on customers.pid = products.pid;

#4
select * from customers inner join products on(customers.pid=products.pid) and (pname='ssd');

#5
select * from customers left join products using(pid);


 