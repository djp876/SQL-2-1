########PROCEDURE FOR CHECKING THE EXISTENCE OF A GIVEN PRODUCT ID

create or replace procedure mat(n in number,s out char) as
	a item.prod_id%type;
begin 
	select prod_id into a from item where prod_id=n;
	s:='match found';
exception
	when no_data_found then
	dbms_output.put_line('match not found');
end;

#########MAIN PROGRAM

declare 
	n number:=&id;
	s char(12);
begin
	mat(n,s);
	dbms_output.put_line(s);
end;
