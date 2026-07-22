create database if not exists shopping_db;
use shopping_db;
create table if not exists products
(
	product_id int unsigned primary key auto_increment,
	product_name varchar(50) not null,
	stock tinyint check((stock>=1) && (stock<=99)) ,
	price double unsigned,
	final_price decimal(10,2) unsigned
)auto_increment=1001;
desc products;
insert into products values(default,'gold',99,5000,60000);
select * from products;