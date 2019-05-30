const s=5;
var b:array[0..s-1] of integer;
    k:array[0..4] of integer=(0,0,0,0,0);
    n,i,j,r:integer;
begin
  read(n); r:=0;
  for i:=0 to s-1 do read(b[i]);
  for i:=s to n-1 do begin
    k[b[i mod s] mod 5]+=1;
    read(b[i mod s]);
    r+=k[b[i mod s] mod 5];
  end;
  writeln(r);
end.
// 10 1 2 3 4 5 6 7 8 9 10 => 5