const s=6;z=1001; // ???? 
var n,i,minp,m1,m2,m3,m6,x:integer;
begin
  (minp,m1,m2,m3,m6):=(z*z,z,z,z,z);
  read(n,x);
  for i:=2 to n do begin
    if (x mod 6=0) and (x<m6) then m6 := x; 
    if (x mod 3=0) and (x<m3) then m3 := x; 
    if (x mod 2=0) and (x<m2) then m2 := x; 
    if x<m1 then m1 := x; 
    read(x);
    if (x mod 6=0) and (m1<z) and (m1*x<minp) then minp:=m1*x;
    if (x mod 3=0) and (m2<z) and (m2*x<minp) then minp:=m2*x;
    if (x mod 2=0) and (m3<z) and (m3*x<minp) then minp:=m3*x;
    if (m6<z) and (m6*x<minp) then minp:=m6*x;
  end;
  if minp<z*z then writeln(minp)
  else writeln(-1);
end.
// 6 30 6 5 3 4 300 => 12