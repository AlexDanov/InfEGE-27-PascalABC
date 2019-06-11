const s=4;
var n,i,j,k,k29,k1:integer;
    b:array[1..s] of integer; 
begin
  (k29,k1,k):=(0,0,0);
  read(n);
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    if b[1] mod 29 = 0 then k29+=1
    else k1+=1;
    for j:=1 to s-1 do b[j]:=b[j+1];
    read(b[s]);
    if b[s] mod 29 = 0 then k+=k1;
    k+=k29;
  end;
  writeln(k);
end.
// 7 58 2 3 5 4 1 29 => 5