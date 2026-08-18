drop database if exists kamalclasses_db;
create database if not exists kamalclasses_db;
use kamalclasses_db;

create table if not exists student (
	rno int primary key,
	name varchar(30)
);

delimiter $$
drop procedure if exists student_record$$
create procedure student_record(r int,n varchar(40))
begin
	declare exit handler for 1048
		select "rno cannot be null " as ERR_MSG;
	declare exit handler for 1062
		select "rno already exists" as ERR_MSG;
	declare exit handler for SQLSTATE '12345'
		select "rno should be min 1 " as ERR_MSG;
	declare exit handler for SQLSTATE '23456'
		select "name should not be empty" as ERR_MSG;
	declare exit handler for SQLSTATE '34567'
		select "name should not be blank spaces" as ERR_MSG;
	declare exit handler for SQLSTATE '45678'
		select "name should only be alphabet" as ERR_MSG;
	select "welcome" as MSG;
		
	if r < 1 then
		signal SQLSTATE '12345';
	end if ;
	if length(n) = 0 then
		signal SQLSTATE '23456';
	end if ;
	if length(trim(n)) = 0 then
		signal SQLSTATE '34567';
	end if ;
	if not n regexp "^[A-Za-z]+$" then
		signal SQLSTATE '45678';
	end if;
	insert into student values(r,n);
	select "record saved" as MSG;
end $$
delimiter ;
