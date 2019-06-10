const s=4;
var n,i,j,k1,k3,k7,k9,k:integer;
    b:array[1..s] of integer;
begin
  read(n);(k1,k3,k7,k9):=(0,0,0,0);
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    if b[1] mod 10 = 1 then k1+=1;
    if b[1] mod 10 = 3 then k3+=1;
    if b[1] mod 10 = 7 then k7+=1;
    if b[1] mod 10 = 9 then k9+=1;
    for j:=1 to s-1 do b[j]:=b[j+1];
    read(b[s]);
    if b[s] mod 10 = 1 then k+=k1;
    if b[s] mod 10 = 3 then k+=k7;
    if b[s] mod 10 = 7 then k+=k3;
    if b[s] mod 10 = 9 then k+=k9;
  end;
  writeln(k);
end.
// 10 12 81 2 7 33 99 21 11 121 10 => 3