var n,i,x,mp,s,t,r,
    m0_1,m0_2,m2_1,m2_2,m13_1,m13_2:integer;
begin
  read(n);
  (m0_1,m0_2,m2_1,m2_2,m13_1,m13_2):=(0,0,0,0,0,0);
  for i:=1 to n do begin
    read(x); 
    if x mod 26 <> 0 then begin
      if x mod 13=0 then 
        if x>m13_1 then begin
          m13_2:=m13_1;
          m13_1:=x;
        end else if x>m13_2 then m13_2:=x;
      if x mod 2=0 then 
        if x>m2_1 then begin
          m2_2:=m2_1;
          m2_1:=x;
        end else if x>m2_2 then m2_2:=x;
      if (x mod 2<>0) and (x mod 13<>0) then 
        if x>m0_1 then begin
          m0_2:=m0_1;
          m0_1:=x;
        end else if x>m0_2 then m0_2:=x;
    end;
  end;
  read(r);
  mp:=m2_1*m2_2;
  if mp<m13_1*m13_2 then mp:=m13_1*m13_2;
  if mp<m0_1*m0_2 then mp:=m0_1*m0_2;
  if mp<m0_1*m13_1 then mp:=m0_1*m13_1;
  if mp<m0_1*m2_1 then mp:=m0_1*m2_1;
  if mp<>0 then 
    writeln('Вычисленное ', mp);
  if r=mp then writeln('Контроль пройден')
  else writeln('Контроль не пройден');
end.
  
  
  
  