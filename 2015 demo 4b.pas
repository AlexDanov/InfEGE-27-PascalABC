const s=6;z=1001;
var b:array[1..s] of real;
    n,i,j:integer;
    minp,min1:real;
begin
  read(n);
  min1 := z; minp:=z*z;
  for i:=1 to s do read(b[i]); // заполнение буфера
  for i:=s+1 to n do begin
    if b[1]<min1 then min1 := b[1]; 
    for j:=1 to s-1 do b[j]:=b[j+1]; // сдвиг
    read(b[s]);
    if b[s]*min1<minp then minp:=b[s]*min1;
  end;
  writeln(minp);
end.
//11 12 45.3 5.5 4 25 23 21 20 10 12 26 => 48