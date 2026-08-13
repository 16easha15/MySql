use kc_db;
delimiter $$
drop procedure if exists p7 $$
create procedure p7()
begin
	declare yr int default year(now());
	case  
		when yr % 4
			then	select concat(yr, "is a leap year ") as MSG;
		else		select concat(yr, " is not a leap year") as MSG;
	end case;
end $$
delimiter ;