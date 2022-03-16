declare
dn emp1.dno%type := &dn;
c number;
begin
delete from emp1 where dno = dn;
if sql%found then
c := sql%rowcount;
insert into del_history values(dn,c,sysdate);
end if;
end;
