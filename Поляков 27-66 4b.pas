var n,i,x,rmin,s:integer;
begin
  read(n);
  s := 0; rmin := 10001;
  for i:=1 to n do begin
    read(x);
    s += x;
    if (x<rmin) and (x mod 4<>0) then rmin := x;
  end;
  if s mod 4 = 0 then 
    if rmin=10001 then writeln(0)
    else writeln(n-1,' ',s-rmin)
  else writeln(n,' ',s);
end.