const s=6;
var b:array[1..s] of integer;
    n,i,j,k1,k3,k7,k9,k:integer;
begin
  read(n);
  (k1,k3,k7,k9,k):=(0,0,0,0,0);
  for i:=1 to s do read(b[i]);
  for i:=s+1 to n do begin
    if b[1] mod 10 = 1 then k1+=1;
    if b[1] mod 10 = 3 then k3+=1;
    if b[1] mod 10 = 7 then k7+=1;
    if b[1] mod 10 = 9 then k9+=1;
    for j:=1 to s-1 do b[j]:=b[j+1]; 
    read(b[s]);
    if b[s] mod 10 = 1 then k+=k3;
    if b[s] mod 10 = 3 then k+=k1;
    if b[s] mod 10 = 7 then k+=k9;
    if b[s] mod 10 = 9 then k+=k7;
  end;
  writeln(k);
end.
//10 17 11 15 24 36 47 13 9 44 53  => 2