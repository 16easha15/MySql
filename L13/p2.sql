#exit handler
use kamalclasses;
delimiter $$
drop procedure if exists p2 $$
create procedure p2()
begin
	declare exit handler for 1146
		select "table does not exists " as ERR_MSG;
	select "welcome" as MSG;
	select * from student;
	select "bye" as MSG;
end $$
delimiter ;