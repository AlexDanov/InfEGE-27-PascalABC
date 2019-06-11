const s=6+1;z=1001;
var b:array[1..s] of real;
    n,i,j:integer;
    minp,min1:real;
begin
  read(n);
  min1 := z; minp:=z*z;
  for i:=1 to s-1 do read(b[i]);
  for i:=s to n do begin
    if b[1]<min1 then min1 := b[1]; 
    read(b[s]);
    if b[s]*min1<minp then minp:=b[s]*min1;
    for j:=1 to s-1 do b[j]:=b[j+1]; // сдвиг
  end;
  writeln(minp);
end.
//11 12 45.3 5.5 4 25 23 21 20 10 12 26 => 48