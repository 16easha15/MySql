use kc;
delimiter $$
drop procedure if exists p2 $$
create procedure p2()
begin
	select "Good evening everybody" as msg;
end $$
delimiter ;