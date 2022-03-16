create or replace trigger audit_trial
	after update or delete on persinfo for each row
declare
	eno    number;
	ename  varchar2(12);
	eage   number;
	op     varchar2(12);
begin
	if updating then op:='update';
	elsif deleting then op:='delete';
	end if;
	eno    :=  :old.empno;
	ename  :=  :old.name;
	eage   :=  :old.age;
	insert into auditpersinfo
	values(eno,ename,eage,op,sysdate);
end;
