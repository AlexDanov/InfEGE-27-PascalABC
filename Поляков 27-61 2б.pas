var n,i,j,R,ms:integer;
    a:array[1..10000] of integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  ms:=1;
  for i:=1 to n-1 do 
    for j:=i+1 to n do
      if ((a[i]+a[j])mod 3 = 0) and (a[i]+a[j]>ms) then ms := a[i]+a[j];
  writeln('Вычисленное значение ', ms);
  read(R);
  if R=ms then writeln('Контроль пройден')
  else writeln('Контроль не пройден');
end.
// 6 100 8 33 145 19 84 153