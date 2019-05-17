var n,i,a,b,t,ta,tb,tmin:integer;
begin
  read(n,t);
  (ta,tb):=(0,0);
  for i:=1 to n do begin
    read(a,b);
    ta:=ta+a; tb:=tb+b;
    if tb>ta then tb:=ta;
  end;
  tmin := tb+t;
  writeln(tmin);
end.