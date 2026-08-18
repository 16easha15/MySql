#continue handler
use kamalclasses;
delimiter $$
drop procedure if exists p3 $$
create procedure p3()
begin
	declare continue handler for 1146
		select "table does not exists " as ERR_MSG;
	select "welcome" as MSG;
	select * from student;
	select "bye" as MSG;
end $$
delimiter ;