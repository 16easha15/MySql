use kc
delimiter $$
drop procedure if exists p4 $$
create procedure p4()
begin
	declare n timestamp default now();
	declare da int default day(n);
	declare mo int default month(n);
	declare ye int default year(n);
	
	select concat(da,":",mo,":",ye) as msg; 

end $$
delimiter ;