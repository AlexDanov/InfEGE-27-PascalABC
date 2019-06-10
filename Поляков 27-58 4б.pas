const s=8;
var n,i,j,mp,x,max1:integer;
    b:array[1..s] of integer;
begin
  read(n);
  mp:=0; max1:=0;
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    if b[1]>max1 then max1:=b[1];
    for j:=1 to s-1 do b[j]:=b[j+1];
    read(b[s]);
    if max1*b[s]>mp then mp:=max1*b[s];
  end;
  writeln(mp);
end.
// 10 100 45 55 245 35 25 10 10 10 26