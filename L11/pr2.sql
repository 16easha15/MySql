use kc;
delimiter $$
drop procedure if exists pr2 $$
create procedure pr2(eid int)
begin
	declare c int default 0;
	declare sa double default 0;
	declare tax double default 0;

	select count(*) into c from emp where id=eid;
	if c = 0 then
		select concat(eid,"does not exists") as MSG;
	else
		select salary into sa from emp where id = eid;
		if sa >= 4000 then
			set tax = sa * 0.20;
		else
			set tax = sa * 0.10;
		end if;
		select concat("Tax amount = ",tax) as MSG;
	end if;	
end $$
delimiter ;
