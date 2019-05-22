var a,i,j,k,n:integer;
    x,y:array[0..3] of integer;
    p:array[0..2] of integer;

procedure mxy(a:integer);
begin y[a mod 4]:=max(a,y[a mod 4]) end;

begin
  read(n);
  read(p[0],p[1],p[2]);
  for k:=0 to 3 do y[k] := 0;
  for i:=0 to 2 do mxy(p[i]+p[(i+1) mod 3]);
  for j:=2 to n do begin
    for k:=0 to 3 do (x[k],y[k]) := (y[k],0);
    read(p[0],p[1],p[2]);
    for k:=0 to 3 do
      if x[k]<>0 then 
        for i:=0 to 2 do mxy(x[k]+p[i]+p[(i+1) mod 3]);
  end;
  writeln(y[0]);
end.
// 6  8 3 4  4 8 12  9 5 6  2 8 3  12 3 5  1 4 12 => 88
// 5  1 8 8  7 8 8  7 8 8  7 8 8  1 1 2 => 64