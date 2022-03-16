declare
id inven.pid%type ;
invalid_qty exception;
begin
select pid into id from inven where qty < 0;
if sql%found then raise invalid_qty;
end if;
exception
when no_data_found then
dbms_output.put_line('NO DATA FOUND');
when too_many_rows then 
dbms_output.put_line('more than one row selected where only 1 is expected');
when invalid_qty then 
dbms_output.put_line('INVALID QUANTITY');
update inven set qty = 0 where pid = id;
end;
