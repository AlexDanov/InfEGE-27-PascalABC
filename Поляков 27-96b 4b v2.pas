const s=5+1;
var b:array[1..s] of integer;
    k:array[0..2] of integer=(0,0,0);
    i,j,t:integer;
begin
  for i:=1 to s do read(b[i]);
  t:=0; 
  while b[s]>0 do begin
    k[b[1] mod 3]+=1;
    t+=k[(3 - b[s] mod 3) mod 3];
    for j:=1 to s-1 do b[j]:=b[j+1];
    read(b[s]);
  end;
  writeln(t);
end.
// 10 12 81 2 7 33 99 21 11 121 10 0 => 5