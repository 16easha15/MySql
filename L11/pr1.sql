use kc;
delimiter $$
drop procedure if exists pr1 $$
create procedure pr1(eid int)
begin
	declare c int default 0;
	select count(*) into c from emp where id=eid;
	if c=0 then
		select concat(eid,"does not exists") as MSG;
	else
		select concat("name = ", name ," salary = ",salary) asMSG from emp where id =eid;
	end if;
	
end $$
delimiter ;
