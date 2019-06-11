var n,i,x,m21,m7,m3,m1,m,r:integer;
begin
  (m21,m7,m3,m1):=(0,0,0,0);
  read(n);
  for i:=1 to n do begin
    read(x);
    if (x mod 7=0)and(x mod 3<>0)and(x>m7) then m7:=x;
    if (x mod 7<>0)and(x mod 3=0)and(x>m3) then m3:=x;
    if (x mod 21=0)and(x>m21) then begin
      if m1<m21 then m1:=m21;
      m21:=x;
    end else if x>m1 then m1:=x;
  end;
  m:=max(m7*m3,m21*m1);
  read(r);
  writeln('Вычисленное контрольное значение: ',m);
  if R=m then writeln('Контроль пройден.')
  else writeln('Контроль не пройден.');
end.
// 6 70 21 997 7 9 300 21000 => ...