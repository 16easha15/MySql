drop database if exists music_db;
create database if not exists music_db;
use music_db;
create table if not exists listeners
(
	user_id int unsigned primary key,
	name varchar(50) not null,
	account enum('Free','Premium') default 'Free',
	preferences set('Songs','Podcasts','Audiobooks','Live Concerts') default 'Songs'
);
desc listeners;
insert into listeners values(101,'rahul',default,default);
insert into listeners values(102,'mitali','Premium','Audiobooks');
select * from listeners;
