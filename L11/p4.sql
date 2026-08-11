use kamalclasses;

delimiter $$
drop procedure if exists p4$$
create procedure p4(n1 double,n2 double)
begin
	declare sum double default 0;
	set sum = n1+n2;
	select concat("sum = ",sum) as MSG;
end$$
delimiter ;