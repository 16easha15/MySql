use kc_db;
delimiter $$
drop procedure if exists p3 $$
create procedure p3(year int)
begin
	if year is null then
		select "year should not be null" as ERR_MSG;
	else
		case 
		when year % 4=0  then	select concat(year,"is a leap year") as MSG;
			else		select concat(year,"is not a leap year") as MSG;
		end case;
	end if;
end $$
delimiter ;