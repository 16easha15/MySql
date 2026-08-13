use kit;
delimiter $$
drop procedure if exists pr1 $$
create procedure pr1(r int)
begin
	declare c int default 0;
	declare na varchar(50) default "";
	declare ma int default 0;
	declare result varchar(10) default "";
	
	if r is null then
		select "rno should not be null" as ERR_MSG;
	else 
		select count(*) into c from student where rno = r;
		if c = 0 then
			select concat(r," does not exists") as ERR_MSG;
		else
			select name,marks into na,ma from student where rno = r;
			if ma > 60 then
				set result = "Pass";
			else
				set result = "Fail";
			end if;
		select concat("rno = ",r ," name = ",na , " marks = ",ma, "result = ",result) as MSG;
		end if;
	end if;
end $$
delimiter ;