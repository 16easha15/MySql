drop database if  exists library;
create database if not exists library;
use library;

create table if not exists authors(
	author_id int unsigned primary key,
	name varchar(50) not null,
	email varchar(100),
	constraint uq_author_email unique(email)
);
desc authors;
show create table authors;

insert into authors values(1,'prajakta koli','prajaktakoli@gmail.com');
insert into authors values(2,'Babasaheb Ambedkar','babaambedkar@gmail.com');
select * from authors;

create table if not exists books(
	book_id int unsigned primary key,
	title varchar(100) not null,
	isbn char(13) unique,
	author_id int unsigned,
	foreign key(author_id) references authors(author_id)
	on delete cascade
	on update cascade
);
desc books;
show create table books;
insert into books values(101,'too good to be true','978-93-125-8',1);
insert into books values(102,'constitution','234-26-643-7',2);
select * from books;