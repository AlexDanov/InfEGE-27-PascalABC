var n,i,x,m6,m3,m2,m1,r,mp:integer;
begin
  (m1,m2,m3,m6,n,mp):=(0,0,0,0,0,0);
  read(x);
  while x>0 do begin
    n+=1;
    if (x mod 6 =0) and (x>m6) then m6 := x
    else if (x mod 3 =0) and (x>m3) then m3:=x
    else if (x mod 2 =0) and (x>m2) then m2:=x
    else if x>m1 then m1:=x;
    read(x);
    if x*m6>mp then mp:=x*m6;
    if (x*m3>mp) and (x mod 2=0) then mp:=x*m3;
    if (x*m2>mp) and (x mod 3=0) then mp:=x*m2;
    if (x*m1>mp) and (x mod 6=0) then mp:=x*m1;
  end;
  read(r);
  writeln('Получено ',n,' чисел');
  writeln('Полученное котрольное значение: ',r);
  writeln('Вычисленное котрольное значение: ',mp);
  if mp=r then writeln('Контроль пройден')
  else writeln('Контроль не пройден');
end.