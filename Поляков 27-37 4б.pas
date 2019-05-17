var n,i,x,m61,m62,m3,m2,m1,r,mp:integer;
begin
  (m1,m2,m3,m61,m62,n):=(0,0,0,0,0,0);
  read(x);
  while x>0 do begin
    n+=1;
    if (x mod 6 =0) and (x>m61) then (m62,m61):=(m61,x)
    else if (x mod 6 =0) and (x>m62) then m62 := x
    else if (x mod 3 =0) and (x>m3) then m3:=x
    else if (x mod 2 =0) and (x>m2) then m2:=x
    else if x>m1 then m1:=x;
    read(x);
  end;
  mp := seq(m61*m62,m61*m3,m61*m2,m61*m1,m2*m3).Max;
  read(r);
  writeln('Получено ',n,' чисел');
  writeln('Полученное котрольное значение: ',r);
  writeln('Вычисленное котрольное значение: ',mp);
  if mp=r then writeln('Контроль пройден')
  else writeln('Контроль не пройден');
end.