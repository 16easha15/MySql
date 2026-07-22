drop database if exists transport_db;
create database if not exists transport_db;
use transport_db;

create table if not exists vehicles
(
	vehicle_id int unsigned primary key auto_increment,
	vehicle_name varchar(20) not null
)auto_increment=1001;
desc vehicles;

alter table vehicles add column type enum('Car','Truck','Bus'),
add column year char(4);
desc vehicles;

alter table vehicles add column features set('AC','GPS','MusicSystem','Camera') after type;
desc vehicles;

alter table vehicles add column mileage decimal(6,2);
desc vehicles;

alter table vehicles modify vehicle_name varchar(50) not null;
desc vehicles;

alter table vehicles change vehicle_name model_name varchar(50) not null;
desc vehicles;

alter table vehicles modify type enum('Car','Truck','Bus','Cycle');
desc vehicles;

alter table vehicles drop column features;
desc vehicles;