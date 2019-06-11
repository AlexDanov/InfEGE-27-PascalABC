var a:array[1..10000] of integer;
    n,i,j,maxp,R:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  maxp:=0;
  for i:=1 to n-1 do 
    for j:=i+1 to n do
      if (a[i]*a[j] mod 21 =0)and(a[i]*a[j]>maxp)
        then maxp:=a[i]*a[j];
  read(R);
  writeln('Вычисленное контрольное значение: ',maxp);
  if R=maxp then writeln('Контроль пройден.')
  else writeln('Контроль не пройден.');
end.
// 6 70 21 997 7 9 300 21000 => ...