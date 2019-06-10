const s=4;
var n,i,j,k,d:integer;
    t:array[0..9] of integer=(0,0,0,0,0,0,0,0,0,0);
    b:array[1..s] of integer;
begin
  read(n);k:=0;
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    t[b[1] mod 10]+=1;
    for j:=1 to s-1 do b[j]:=b[j+1];
    read(b[s]); d := b[s] mod 10;
    if d in [1,9] then k+=t[d];
    if d in [3,7] then k+=t[10-d];
  end;
  writeln(k);
end.
// 10 12 81 2 7 33 99 21 11 121 10 => 3