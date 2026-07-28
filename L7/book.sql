drop database if exists book_db;
create database if not exists book_db;
use book_db;

create table if not exists books
(
	bid int unsigned primary key,
	bname varchar(50),
	bprice decimal(10,2),
	bcategory varchar(50) 
);
desc books;

#1
insert into books values(10,'java',450,'comps');
select * from books;

#2
insert into books values(20,'android',350,'comps'),(15,'ac',450,'mech');
select * from books;

#3
update books set bname='java certification' where bid=10;
select * from books;

#4
update books set bname='rac',bprice=320 where bid=15;
select * from books;

#5
update books set bprice=bprice*1.10;
select * from books;

#6
delete from books where bcategory ='mech';
select * from books;

#7
update books set bprice=bprice*0.97 where bcategory='comps';
select * from books;
