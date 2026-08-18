#named conditions
use kamalclasses;
delimiter $$
drop procedure if exists p4 $$
create procedure p4()
begin
	declare table_nahin_hai condition for 1146;
	declare continue handler for table_nahin_hai
		select "table does not exists " as ERR_MSG;
	select "welcome" as MSG;
	select * from student;
	select "bye"  as MSG;
end $$
delimiter ;