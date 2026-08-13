use kit;
delimiter $$
drop procedure if exists pr2 $$
create procedure pr2(r int)
begin
	declare c int default 0;
	declare na varchar(50) default "";
	declare ma int default 0;
	declare result varchar(20) default "";
	
	if r is null then
		select "rno should not be null" as ERR_MSG;
	else
		select count(*) into c from student where rno=r;
		if c = 0 then
			select concat(r, "does not exists") as ERR_MSG;
		else 
			select name,marks into na,ma from student where rno = r;
			if ma >=70 then 	set result = "distinction";
			elseif ma>=60 then 	set result = "First class";
			elseif ma>=50 then 	set result = "Second class";
			elseif ma>=40 then 	set result = "Pass Class";
			else			set result = "Fail";	
			end if;
		select concat("rno = ", r ," name = ", na , " marks = ", ma ," result = ", result) as MSG;
		end if;
	end if;
end $$
delimiter ;
