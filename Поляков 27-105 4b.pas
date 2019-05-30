const s=5;
var b:array[1..s] of integer;
    k:array[0..4] of integer=(0,0,0,0,0);
    n,i,j,r:integer;
begin
  read(n); r:=0;
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    k[b[1] mod 5]+=1;
    for j:=1 to s-1 do b[j]:=b[j+1];
    read(b[s]);
    r+=k[b[s] mod 5];
  end;
  writeln(r);
end.
// 10 1 2 3 4 5 6 7 8 9 10 => 5