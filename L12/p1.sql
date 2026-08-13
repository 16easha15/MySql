use kc_db;
delimiter $$
drop procedure if exists p1 $$
create procedure p1(year int)
begin
	if year is null then
		select "year should not be null" as ERR_MSG;
	else
		if year % 4 = 0 then
			select concat(year,"is a leap year") as MSG;
		else
			select concat(year,"is not a leap year") as MSG;
		end if;
	end if;
end $$
delimiter ;