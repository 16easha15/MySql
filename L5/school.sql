drop database if exists school_db;
create database if not exists school_db;
use school_db;
create table if not exists students
(
	roll_number int unsigned primary key,
	name varchar(50),
	email_id varchar(100) unique,
	phone_number char(10) unique,
	adhar_card char(12),
	class char(1),
	constraint uk_acard unique(adhar_card),
	unique(roll_number,class)
		
);
desc students;
show create table students\G
alter table students drop index uk_acard;
alter table students drop index phone_number; 
desc students;
show create table students\G
