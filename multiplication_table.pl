declare
n number := &n;
i number;
begin
for i in 1..20 loop
dbms_output.put_line(n||' X '||i||' = '||n*i);
end loop;
end;
