var m:array[0..1,0..1,1..2] of integer=(((0,0),(0,0)),((0,0),(0,0)));
    n,i,x,mp,s,t,r:integer;
begin
  read(n);
  for i:=1 to n do begin
    read(x); s:=x mod 2; t:=sign(x mod 13);
    if x>m[s, t,1] then begin
      m[s,t,2] := m[s,t,1];
      m[s,t,1] := x;
    end else if x>m[s,t,2] then m[s,t,2]:=x;
  end;
  read(r);
  mp:=m[0,1,1]*m[0,1,2];
  if mp<m[1,0,1]*m[1,0,2] then mp:=m[1,0,1]*m[1,0,2];
  if mp<m[1,1,1]*m[1,1,2] then mp:=m[1,1,1]*m[1,1,2];
  if mp<m[0,1,1]*m[1,1,1] then mp:=m[0,1,1]*m[1,1,1];  
  if mp<m[1,0,1]*m[1,1,1] then mp:=m[1,0,1]*m[1,1,1];  
  if mp<>0 then 
    writeln('Вычисленное ', mp);
  if r=mp then writeln('Контроль пройден')
  else writeln('Контроль не пройден');
end.
  
  
  
  