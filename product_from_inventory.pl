declare
id inven.pid%type := &id;
q inven.qty%type;
begin
select qty into q from inven where pid = id;
if q > 0 then 
update inven set qty = qty - 1 where pid = id;
insert into pur_rec values(id,'PURCHASED',sysdate);
else
insert into pur_rec values(id,'OUTOFSTOCK',sysdate);
end if;
end;
