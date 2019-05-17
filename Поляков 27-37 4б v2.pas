var n,i,x,m6,m,m3,m2,r,mp:integer;
begin
  (m,m2,m3,m6,n):=(0,0,0,0,0);
  read(x);
  while x>0 do begin
    n+=1;
    if (x mod 6 =0) and (x>m6) then begin
      if m<m6 then m := m6;
      m6 := x
    end else if x>m then m := x;
    
    if (x mod 3 =0) and (x>m3) then m3:=x
    else if (x mod 2 =0) and (x>m2) then m2:=x;
    read(x);
  end;
  mp := max(m6*m,m2*m3);
  read(r);
  writeln('Получено ',n,' чисел');
  writeln('Полученное котрольное значение: ',r);
  writeln('Вычисленное котрольное значение: ',mp);
  if mp=r then writeln('Контроль пройден')
  else writeln('Контроль не пройден');
end.