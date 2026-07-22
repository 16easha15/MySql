drop database if exists ecommerce_db;
create database if not exists ecommerce_db;
use ecommerce_db;

create table if not exists orders
(
	order_id int unsigned primary key,
	customer_name varchar(100) not null,
	payment_mode enum('COD','Card','UPI','Net')
);

desc orders;
insert into orders values(1,'amit','cod');
insert into orders values(2,'sumit','Card');
select * from orders;
