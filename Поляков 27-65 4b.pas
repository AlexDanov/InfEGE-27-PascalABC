var n,i,a,b,s,rmin,r:integer;
begin
  s:=0;
  rmin:=10001;
  read(n);
  for i:=1 to n do begin
    read(a,b);
    s += max(a,b);
    r := abs(a-b);
    if (r mod 4<>0)and(r<rmin) then rmin := r;
  end;
  if s mod 4 = 0 then 
    if rmin<>10001 then s-=rmin
    else s := 0;
  writeln(s);
end.