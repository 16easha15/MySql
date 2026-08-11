use kamalclasses;
delimiter $$
drop procedure if exists p5$$
create procedure p5(n1 double,n2 double,n3 double)
begin
	declare avg double default 0;
	set avg=(n1+n2+n3)/3;
	select concat("average = ",round(avg,2)) as MSG;
end$$
delimiter ;

