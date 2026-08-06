use kc;
delimiter $$
create procedure p1()
begin
	select "welcome to pl/sql" as MSG;
end $$
delimiter ;
 