drop database if exists bookstore_db;
create database if not exists bookstore_db;
use bookstore_db;
create table if not exists books
(
	book_id int unsigned primary key,
	title varchar(50),
	category enum('fiction','science','programming','kids'),
	price decimal(8,2)
);
desc books;
insert into books values(101,'Java Basics','Programming',450.50),(102,'Python 101','Programming',399.00),(103,'Harry Potter','Fiction',550.00),(104,'Space Facts','Science',300.00),(105,'Kids Story','Kids',150.00);
select * from books;

#1
select title,price from books;

#2
select book_id as id,title as BookName from books;

#3
select concat(title,"costs Rs ",price) as Book_Info from books;

#4
select distinct category from books;

#5
select * from books where price>300;

#6
select * from books where (price<500) and (category='programming');

#7
select * from books where title like 'P%';

#8
select * from books where title like '%on%';

#9
select * from books where category='Fiction' or category='Science';

#10
select * from books where category!='Programming' and category!='Kids';

#11
select * from books where price between 200 and 450;

#12
select * from books order by price desc;

#13
select * from books order by category asc , price desc;

#14
select * from books order by price asc limit 2;

#15
select * from books order by price desc limit 1,1;



