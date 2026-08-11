use kamalclasses;
delimiter $$
drop procedure if exists p1$$
create procedure p1()
begin
	select "welcome to pl/sql" as MSG;
end$$
delimiter ;
