use kc
delimiter $$
drop procedure if exists p3 $$
create procedure p3()
begin
	declare n timestamp default now();
	declare hr int default hour(n);
	declare mi int default minute(n);
	declare se int default second(n);
	
	select concat(hr,":",mi,":",se) as MSG;

end $$
delimiter ;