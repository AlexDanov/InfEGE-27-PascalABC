var n,i,j,t,ta,tb,tmin:integer;
    a,b:array[1..10000] of integer;
begin
  read(n,t); tmin := maxint;
  for i:= 1 to n do read(a[i],b[i]);
  for i:=0 to n do begin
    (ta,tb):=(0,0);
    for j:=1 to i do ta+=a[j];
    for j:=i+1 to n do tb+=b[j];
    if ta+tb+t<tmin then tmin := ta+tb+t;
  end;
  writeln(tmin);
end.