const s=6;
var n,i,j:integer;
    min1,mins:real;
    b:array[1..s] of real; //double=real
begin
  read(n);
  min1 := 1001;
  mins := 1000001;
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    if b[1]<min1 then min1:=b[1];
    for j:=1 to s-1 do
      b[j]:=b[j+1];
    read(b[s]);
    if (min1<>1001) and (b[s]*min1<mins) then mins:=b[s]*min1;
  end;
  writeln(mins);
end.
// 11 12 45 5 4 25 23 21 20 10 12 26 => 48