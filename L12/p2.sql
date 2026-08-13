use kc_db;
delimiter $$
drop procedure if exists p2 $$
create procedure p2(year int)
begin 
	if year is null then 
		select "year should not be null" as ERR_MSG;
	else
		case year % 4
			when 0 then 	select concat(year,"is a leap year") as MSG;
			when 1 then	select concat(year,"is not a leap year") as MSG;
			when 2 then	select concat(year,"is not a leap year") as MSG;
			when 3 then	select concat(year,"is not a leap year") as MSG;
		end case;
	end if;
end $$
delimiter ;
	


			