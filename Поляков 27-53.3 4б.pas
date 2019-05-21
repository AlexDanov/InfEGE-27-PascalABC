var n,i,a,b,t,ta,tb,tmin:integer;
begin
  read(n,t);
  (ta,tb):=(0,t);
  for i:=1 to n do begin
    read(a,b,t);
    ta:=ta+a; tb:=tb+b;
    if tb>ta+t then tb:=ta+t;
    if ta>tb+t then ta:=tb+t;
  end;
  tmin := min(tb,ta+t);
  writeln(tmin);
end.