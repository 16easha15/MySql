drop database if exists hotel_db;
create database if not exists hotel_db;
use hotel_db;

create table if not exists rooms
(
	room int unsigned primary key,
	room_type enum('single','double','suit')default 'single',
	facilities set('wifi','tv','ac','balcony')
);
desc rooms;

insert into rooms values(201,'double','wifi,tv');
insert into rooms values(202,'double','wifi,balcony,ac');
select * from rooms;
