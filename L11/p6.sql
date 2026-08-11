use kamalclasses;

delimiter $$
drop procedure if exists p6 $$
create procedure p6(num int)
begin
	if num % 2 = 0 then
		select concat(num," is even") as MSG;
	else
		select concat(num," is odd") as MSG;
	end if;
end $$
delimiter ;