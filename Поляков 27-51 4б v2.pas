﻿var n,i,x,r,k,mp:integer;
    m:array[0..2] of integer=(0,0,0);
begin
  while true do begin
    read(x);
    if x=0 then break;
    k:=0;
    while (x mod 7 = 0) and (k<1) do (k,x) := (k+1, x div 7);
    if x>m[k] then m[k]:=x;
    n+=1;
  end;
  read(r);
  mp := m[0]*m[1];
  if mp=0 then mp:=1;
  writeln('Введено чисел: ',n);
  writeln('Контрольное значение: ',r);
  writeln('Вычисленное значение: ',mp);
  if mp=r then writeln('Значения совпали')
  else writeln('Значения не совпали');
end.