const s=7;
var n,i,j,max1,maxs:integer;
    b:array[1..s] of integer;
begin
  read(n);
  max1 := -maxint;
  maxs := -maxint;
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    if b[1]>max1 then max1:=b[1];
    for j:=1 to s-1 do
      b[j]:=b[j+1];
    read(b[s]);
    if (max1<>-maxint) and (b[s]+max1>maxs) then maxs:=b[s]+max1;
  end;
  writeln(maxs);
end.
// 10 1 2 3 4 5 6 7 8 9 10 => 13