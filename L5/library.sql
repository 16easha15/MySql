drop database if exists library_db;
create database if not exists library_db;
use library_db;
create table if not exists books
(
	book_id int unsigned primary key,
	title varchar(70),
	isbn varchar(13) unique,
	publisher varchar(100),
	constraint uk_title unique(title)	
);
desc books;
show create table books\G
alter table books drop index uk_title;
alter table books add unique(title,publisher);
desc books;
show create table books\G