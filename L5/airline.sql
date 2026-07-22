drop database if exists airline_db;
create database if not exists airline_db;
use airline_db;
create table if not exists bookings
(
	booking_id int unsigned,
	passenger_id int unsigned,
	flight_number char(10),
	primary key(flight_number,passenger_id)
	
);
desc bookings;
show create table bookings\G

alter table bookings drop primary key;
desc bookings;
show create table bookings\G

alter table bookings add primary key(passenger_id);
desc bookings;
show create table bookings\G
