var b:array[1..7] of integer;
    n,i,j,k1,k3,k7,k9,R:integer;
begin
  read(n);
  k1:=0;k7:=0;k3:=0;k9:=0;R:=0;
  for i:=1 to 6 do read(b[i]);
  for i:=7 to n do begin
    read(b[7]);
    if b[1] mod 10 = 1 then k1 := k1+1;
    if b[1] mod 10 = 3 then k3 := k3+1;
    if b[1] mod 10 = 7 then k7 := k7+1;
    if b[1] mod 10 = 9 then k9 := k9+1;
    if b[7] mod 10 = 1 then R := R+k3;
    if b[7] mod 10 = 3 then R := R+k1;
    if b[7] mod 10 = 7 then R := R+k9;
    if b[7] mod 10 = 9 then R := R+k7;
    for j:=1 to 6 do b[j] := b[j+1];
  end;
  writeln(R);
end.