declare
a number := &a;
b number := &b;
g number;
l number;
a1 number;
b1 number;
begin
a1:=a;
b1:=b;
while (a <> b) loop
       if  (a < b) then   
          b := b - a;
        else             
          a := a - b;
     	end if;
end loop;
g := a;  
l:= (a1*b1)/g;
insert into demo_tab values(a1,b1,l,g); 
end;
