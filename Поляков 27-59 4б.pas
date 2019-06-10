const s=4;
var n,i,j,ms,x,min1:integer;
    b:array[1..s] of integer;
begin
  read(n);
  ms:=maxint; min1:=maxint;
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    if b[1]<min1 then min1:=b[1];
    for j:=1 to s-1 do b[j]:=b[j+1];
    read(b[s]);
    if min1+b[s]<ms then ms:=min1+b[s];
  end;
  writeln(ms);
end.
