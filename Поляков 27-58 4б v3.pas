// нужно доделать.
const s=8;
var n,i,j,mp,x,max1:integer;
    b:array[0..s-1] of integer;
begin
  read(n);
  mp:=0; max1:=0;
  read(b[0])
  for i:=1 to s-1 do b[i]:=max(readinteger(),b[i-1]);
  for i:=s to n-1 do begin
    j:=i mod s;
    read(b[j]);
    b[j]:=max(readinteger(),b[(s+j-1])mod s);
    if max1*b[j]>mp then mp:=max1*b[j];
  end;
  writeln(mp);
end.
// 10 100 45 55 245 35 25 10 10 10 26