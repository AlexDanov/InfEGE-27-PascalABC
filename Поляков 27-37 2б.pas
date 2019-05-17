var n,i,j,x,mp,r:integer;
    a:array[1..10000] of integer;
begin
  n:=0; mp:=0;
  read(x);
  while x>0 do begin
    n+=1;
    a[n] := x;
    read(x);
  end;
  read(r);
  for i:=1 to n-1 do 
    for j:=i+1 to n do
      if (a[i]*a[j]mod 6=0) and (a[i]*a[j]>mp) then 
        mp := a[i]*a[j];
  writeln('Получено ',n,' чисел');
  writeln('Полученное котрольное значение: ',r);
  writeln('Вычисленное котрольное значение: ',mp);
  if mp=r then writeln('Контроль пройден')
  else writeln('Контроль не пройден');
end.
// 60 17 3 7 9 60 0 3600