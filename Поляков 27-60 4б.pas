const s=6;z=1001;
var min1,minp,n,i,j,x:integer;
    b:array[0..s-1] of integer;
begin
  min1:=z;minp:=z*z;
  read(n);
  for i:=0 to s-1 do read(b[i]);
  for i:=s to n-1 do begin
    j := i mod s;
    if (b[j] mod 2<>0) and (b[j]<min1) then min1:=b[j];
    read(b[j]);
    if (b[j] mod 2<>0)and(min1<>z)and(min1*b[j]<minp) then minp:= min1*b[j];
  end;
  if minp=z*z then minp:=-1;
  writeln(minp);
end.
// 11 12 45 5 3 17 23 21 20 19 12 26 => 95