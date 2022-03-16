declare
n number := &n;
rem number;
s number := 0;
temp number;
begin
temp := n;
while (n > 0) loop
rem := mod(n,10);
s:= s*10+a;
n:= trunc(n/10);
end loop;
if temp = s then
dbms_output.put_line(temp||' is a palindrome');
else
dbms_output.put_line(temp||' is not a palindrome');
end if;
end;
