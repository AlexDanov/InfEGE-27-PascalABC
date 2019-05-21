var n,i,a,b,c,s,rmin,m:integer;
begin
  s:=0;
  rmin:=10001;
  read(n);
  for i:=1 to n do begin
    read(a,b,c);
    m := max(a,max(b,c));
    s += m;
    if ((m-a) mod 4<>0)and(m-a<rmin) then rmin := m-a;
    if ((m-b) mod 4<>0)and(m-b<rmin) then rmin := m-b;
    if ((m-c) mod 4<>0)and(m-c<rmin) then rmin := m-c;
  end;
  if s mod 4 = 0 then 
    if rmin<>10001 then s-=rmin
    else s := 0;
  writeln(s);
end.
// 6  1 3 2  5 12 12  6 8 12  5 4 12  3 3 12  1 1 13 => 31