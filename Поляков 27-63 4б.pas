const s=9;
var max0,max1,maxp,n,i,j:integer;
    b:array[0..s-1] of integer;
begin
  max0:=-1;max1:=-1;maxp:=-1;
  read(n);
  for i:=0 to s-1 do read(b[i]);
  for i:=s to n-1 do begin
    j := i mod s;
    if (b[j] mod 2=0) and (b[j]>max0) then max0:=b[j];
    if (b[j] mod 2<>0) and (b[j]>max1) then max1:=b[j];
    read(b[j]);
    if (max0<>-1) and (max0*b[j]>maxp) then maxp:= max0*b[j];
    if (b[j] mod 2=0) and (max1<>-1) and (max1*b[j]>maxp) then maxp:= max1*b[j];
  end;
  writeln(maxp);
end.
// 11 12 45 5 3 17 23 21 20 19 12 26 => 1170