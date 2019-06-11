const z=1001;
var n,i,x,m6,m3,m2,m1,m,r:integer;
begin
  (m6,m3,m2,m1):=(z,z,z,z);
  read(n);
  for i:=1 to n do begin
    read(x);
    if (x mod 3=0)and(x mod 2<>0)and(x<m3) then m3:=x;
    if (x mod 3<>0)and(x mod 2=0)and(x<m2) then m2:=x;
    if (x mod 6=0)and(x<m6) then begin
      if m1>m6 then m1:=m6;
      m6:=x;
    end else if x<m1 then m1:=x;
  end;
  m:=z*z;
  if (m2<z)and(m3<z) then m:= m2*m3;
  if (m6<z)and(m1<z)and(m6*m1<m) then m:=m6*m1;
  if m=z*z then m:=0;
  writeln(m);
end.
// 6 30 6 5 3 4 300 => 12