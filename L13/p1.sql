# delecting table from a table which does not exists
use kamalclasses;
delimiter $$
drop procedure if exists p1 $$
create procedure p1()
begin
	select "welcome" as MSG;
	select * from student;
	select "bye" as MSG;
end $$
delimiter ;
