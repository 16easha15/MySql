use kit;
delimiter $$
drop procedure if exists pr3 $$
create procedure pr3(r int)
begin
	declare c int default 0;
	declare ey varchar(4) default "";
	declare result varchar(20) default "";
	
	if r is null then
		select "rno should not be null" as ERR_MSG;
	else
		select count(*) into c from student where rno=r;
		if c = 0 then
			select concat(r, "does not exists") as ERR_MSG;
		else 
			select eyear into ey from student where rno = r;
			case 	ey
				when	"fe"	then 	set result = "5 days";
				when	"se"	then	set result = "4 days";
				else			set result = "2 days";	
			end case;
			select concat("rno = ", r ," result = ", result) as MSG;
		end if;
	end if;
end $$
delimiter ;
