use kc_db;
delimiter $$
drop procedure if exists p5 $$
create procedure p5()
begin
	declare yr int default year(now());
	if yr% 4=0 then
		select concat(yr, "is a leap year ") as MSG;
	else
		select concat(yr, "is not a leap year") as MSG;
	end if;
end $$
delimiter ;