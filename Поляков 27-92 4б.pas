const s=6;z=1001;
var b:array[1..s] of integer;
    n,i,j,min0,min1,minp:integer;
begin
  read(n);
  min0:=z; min1:=z; minp:=z*z;
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    if (b[1]mod 2=0) and (b[1]<min0) then min0:=b[1];
    if (b[1]mod 2<>0) and (b[1]<min1) then min1:=b[1];
    for j:=1 to s-1 do b[j]:=b[j+1];
    read(b[s]);
    if (min0<>z)and(b[s]*min0<minp) then minp:=b[s]*min0;
    if (min1<>z)and(b[s] mod 2 = 0)and(b[s]*min1<minp) then minp:=b[s]*min1;
  end;
  if minp=z*z then writeln(-1)
  else writeln(minp);
end.
      