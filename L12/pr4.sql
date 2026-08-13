use kit;
delimiter $$
drop procedure if exists pr4 $$
create procedure pr4(r int)
begin
	declare c int default 0;
	declare ma int default 0;
	declare result varchar(20) default "";
	
	if r is null then
		select "rno should not be null" as ERR_MSG;
	else
		select count(*) into c from student where rno=r;
		if c = 0 then
			select concat(r, "does not exists") as ERR_MSG;
		else 
			select marks into ma from student where rno = r;
			case
				when	ma>70	then 	set result = "Grade A";
				when	ma>60	then	set result = "Grade B";
				else			set result = "Grade C";	
			end case;
			select concat("rno = ", r ," result = ", result) as MSG;
		end if;
	end if;
end $$
delimiter ;
