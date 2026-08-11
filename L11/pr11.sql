use kc;
delimiter $$
drop procedure if exists pr11 $$
create procedure pr11(eid int)
begin
	declare na varchar(50);
	declare sa double;

	select name,salary into na,sa from emp where id = eid;
	if (na is not null) and (sa is not null) then
		select concat("name = ",na, " salary = ",sa) as MSG;
	else
		select concat(eid," does not exists ") as MSG;
	end if;
	
end $$
delimiter ;
