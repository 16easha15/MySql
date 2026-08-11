use kamalclasses;
delimiter $$
drop procedure if exists p2$$
create procedure p2(name varchar(50))
begin 
	select concat("welcome ",name) as MSG;
end$$
delimiter ;