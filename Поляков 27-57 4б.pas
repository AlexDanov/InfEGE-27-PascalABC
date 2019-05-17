var n,i,x,r,max0,max1,maxs:integer;
begin
  read(n);
  (max0,max1):=(0,0);
  for i:=1 to n do begin
    read(x);
    if (x mod 2=0) and (x>max0) then max0:=x;
    if (x mod 2<>0) and (x>max1) then max1:=x;
  end;
  read(r);
  if (max0>0) and (max1>0) then maxs:=max0+max1
  else maxs := -1;
  writeln('Вычисленное значение: ',maxs);
  if mp=r then writeln('Контроль пройден')
  else writeln('Контроль не впройден');
end.