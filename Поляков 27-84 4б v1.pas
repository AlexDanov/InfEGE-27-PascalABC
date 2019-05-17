var i,a,r,s,m10,m5,m2,m1:integer;
begin
  (m10,m5,m2,m1):=(0,0,0,0);
  read(a);
  while a<>0 do begin
    if (a mod 5 =0) and (a mod 2 =0) and (a>m10)then m10:=a;
    if (a mod 5 =0) and (a mod 2<>0) and (a>m5) then m5:=a;
    if (a mod 5<>0) and (a mod 2 =0) and (a>m2) then m2:=a;
    if (a mod 5<>0) and (a mod 2<>0) and (a>m1) then m1:=a;
    read(a);
  end;
  if (m10*m5>m10*m1) and (m10*m5>m5*m2) then  writeln(m10,' ',m5)
  else if m10*m1>m5*m2 then writeln(m10,' ',m1)
  else if m5*m2<>0 then writeln(m5,' ',m2)
  else writeln(0);
end.
        