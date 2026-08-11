use kamalclasses;

delimiter $$
drop procedure if exists p3 $$
create procedure p3(name varchar(50))
begin
	if name is null then
		select "name should not be null" as ERR_MSG;
	elseif length(name) = 0 then
		select "name should contain min 1 character" as ERR_MSG;
	elseif trim(name) = "" then
		select "name should not be blank spaces" as ERR_MSG;
	else
		select concat("welcome ",name) as MSG;
	end if;
end$$
delimiter ;
