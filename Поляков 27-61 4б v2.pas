var n,i,t,ms,m02,x,R:integer;
    m:array[0..2] of integer=(0,0,0);
begin
  m02:=0;
  read(n);
  for i:=1 to n do begin
    read(x); t:= x mod 3;
    if (t=0) then if x>m[0] then m02:=m[0]
                  else if x>m02 then m02:=x;
    if x>m[t] then m[t]:=x;
  end;
  ms := 1;
  if (m[1]+m[2]>m[0]+m02) and (m[1]<>0) and (m[2]<>0) then ms := m[1]+m[2]
  else if (m[0]<>0) and (m02<>0) then ms := m[0]+m02;
  writeln('Вычисленное значение ', ms);
  read(R);
  if R=ms then writeln('Контроль пройден')
  else writeln('Контроль не пройден');
end.