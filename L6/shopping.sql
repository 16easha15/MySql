drop database if exists shop;
create database if not exists shop;
create table if not exists customers(
	customer_id int unsigned primary key,
	name varchar(50) not null,
	phone varchar(15),
	constraint uq_customer_phone unique(phone),
	email varchar(100),
	constraint uq_customer_email unique(email)
);
desc customers;
show create table customers;

create table if not exists orders(
	order_id int unsigned primary key,
	order_code char(8) unique,
	customer_id int unsigned,
	constraint fk_orders foreign key(customer_id) references customers(customer_id) 
	on delete cascade
	on update cascade
);
desc orders;
show create table orders;

