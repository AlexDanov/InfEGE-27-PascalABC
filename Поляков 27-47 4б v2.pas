const z=100000;
var n,i,x,y,s,k:integer;
    minx,maxx,h:array[-1..1] of integer;
begin
  read(n);
  (minx[-1],maxx[-1],minx[1],maxx[1],h[-1],h[1]) := (0,-z,z,0,0,0);
  for i:=1 to n do begin
    read(x,y); k := sign(x);
    if y=0 then (minx[k],maxx[k]) := (min(x,minx[k]),max(x,maxx[k]))
    else if h[k]<abs(y) then h[k] := abs(y);
  end;
  if minx[-1]=0 then maxx[-1]:=0;
  if maxx[1]=0 then minx[1]:=0;
  s := (maxx[-1]-minx[-1])*h[-1];
  if s<(maxx[1]-minx[1])*h[1] then s :=(maxx[1]-minx[1])*h[1];
  writeln(s/2);
end.
// 8 -10 0  2 0  0 4  3 3  7 0  5 5  4 0  9 -9