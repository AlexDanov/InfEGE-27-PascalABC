const s=5;
var n,i,j,min1,mins:integer;
    b:array[1..s] of integer;
begin
  read(n);
  min1 := 1001;
  mins := 2000001;
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    if abs(b[1])<min1 then min1:=abs(b[1]);
    for j:=1 to s-1 do
      b[j]:=b[j+1];
    read(b[s]);
    if (min1<>1001) and (b[s]*b[s]+min1*min1<mins) then mins:=b[s]*b[s]+min1*min1;
  end;
  writeln(mins);
end.
// 9 12 45 5 4 21 20 10 12 26 => 169