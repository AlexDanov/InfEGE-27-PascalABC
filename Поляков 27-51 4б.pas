var n,i,x,r,m1,m7,m:integer;
begin
  (m1,m7,n):=(0,0,0);
  while true do begin
    read(x);
    if x=0 then break;
    if (x mod 7=0) and (x mod 49<>0) and (x>m7) then m7:=x;
    if (x mod 7<>0) and (x>m1) then m1:=x;
    n+=1;
  end;
  read(r);
  m := m1*m7;
  if m=0 then m:=1;
  writeln('Введено чисел: ',n);
  writeln('Контрольное значение: ',r);
  writeln('Вычисленное значение: ',m);
  if m=r then writeln('Значения совпали')
  else writeln('Значения не совпали');
end.
// 6 7 8 9 0 64 => 63