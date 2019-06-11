var n,i,a,b,s,smax,r,rmin:integer;
begin
  read(n);
  s:=0;rmin:=10001;
  for i:=1 to n do begin
    read(a,b);
    s:=s+max(a,b);
    r:=abs(a-b);
    if (r mod 3<>0)and(r<rmin) then rmin:=r;
  end;
  if s mod 3<>0 then writeln(s)
  else if rmin<10001 then writeln(s-rmin)
  else writeln(0);
end.
// 6   1 3  5 12  6 9  5 4  3 3  1 1 => 32