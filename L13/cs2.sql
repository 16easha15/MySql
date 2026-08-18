drop database if exists tcs_db;
create database if not exists tcs_db;
use tcs_db;

create table if not exists employee
(
	eid int primary key,
	name varchar(20),
	salary double
); 
desc employee;
select * from employee;

delimiter $$
drop procedure if exists employee_record $$
create procedure employee_record(eid int,n varchar(20),s double)
begin
	declare exit handler for 1048
		select "id cannot be null" as ERR_MSG;
	declare exit handler for SQLSTATE '45000'
		select "id must be min 1" as ERR_MSG;
	declare exit handler for 1062
		select "id already exists" as ERR_MSG;
	declare exit handler for SQLSTATE '34241'
		select "name cannot be empty" as ERR_MSG;
	declare exit handler for SQLSTATE '34567'
		select "name cannot be blank spaces" as ERR_MSG;
	declare exit handler for SQLSTATE '45678'
		select "name should contain only alphabets" as ERR_MSG;
	declare exit handler for SQLSTATE '56789'
		select "name length can be max 20 characters" as ERR_MSG;
	declare exit handler for SQLSTATE '67890'
		select "Salary should not be null" as ERR_MSG;
	declare exit handler for SQLSTATE '78901'
		select "salary should min 1.44 lakhs per year" as ERR_MSG;
	select "welcome" as MSG;

	if eid < 1 then
		signal SQLSTATE '45000';
	end if ;
	if n ="" then
		signal SQLSTATE '34241';
	end if ;
	if trim(n) = "" then
		signal SQLSTATE '34567';
	end if ;
	if not n regexp "^[A-Za-z]+$" then
		signal SQLSTATE '45678';
	end if ;
	if length(n) > 20 then
		signal SQLSTATE '56789';
	end if ;
	if s < 1.44 then
		signal SQLSTATE '78901';
	end if ;
	insert into employee values(eid,n,s);
	select "record saved" as MSG;

end $$
delimiter ;