var n,i,m01,m02,m1,m2,ms,x,R:integer;
begin
  m01:=0; m02:=0; m1:=0; m2:=0;
  read(n);
  for i:=1 to n do begin
    read(x);
    if (x mod 3=1) and (x>m1) then m1:=x;
    if (x mod 3=2) and (x>m2) then m2:=x;
    if x mod 3=0 then 
      if x>m01 then begin m02:=m01; m01:=x; end
      else if x>m02 then m02:=x;
  end;
  ms := 1;
  if (m1+m2>m01+m02) and (m1<>0) and (m2<>0) then ms := m1+m2
  else if (m01<>0) and (m02<>0) then ms := m01+m02;
  writeln('Вычисленное значение ', ms);
  read(R);
  if R=ms then writeln('Контроль пройден')
  else writeln('Контроль не пройден');
end.