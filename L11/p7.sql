use kamalclasses;

delimiter $$
drop procedure if exists p7 $$
create procedure p7(marks int)
begin
	if (marks < 0) or (marks > 100) then
		select concat("invalid marks") as ERR_MSG;
	elseif (marks > 80) then
		select concat("Grade A") as MSG;
	elseif (marks > 60) then
		select concat("Grade B") as MSG;
	elseif (marks > 40) then
		select concat("Grade C") as MSG;
	else 
		select concat("Grade D") as MSG;	
	end if;
end $$
delimiter ;