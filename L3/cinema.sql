drop database if exists cinema_db;
create database if not exists cinema_db;
use cinema_db;

create table if not exists movies
(
	movie_id int unsigned primary key auto_increment,
	title varchar(500),
	duration smallint check((duration >= 60)&&(duration <= 300)), 
	ticket_price decimal(6,2) unsigned,
	movie_language enum('EN','HI','MR') default 'HI'
)auto_increment=100;
desc movies;
insert into movies values(default,'Kuch kuch hota hai',120,250,default);
insert into movies values(default,'Hum aapke hai kon',120,300,default);
select * from movies;
