var a,i,j,n,k:integer;
    b:array[1..8] of integer;
begin 
  read(n); k:=0;
  for i:=1 to 8 do begin
    read(b[i]);
    for j:=1 to i-1 do
      if (b[i]+b[j]) mod 8<>0 then k+=1;
  end;
  for i:=9 to n do begin
    for j:=1 to 7 do
      b[j]:=b[j+1];
    read(b[8]);
    for j:=1 to 7 do
      if (b[8]+b[j]) mod 8<>0 then k+=1;
  end;
  writeln(k);
end.
// 10 17 4 1 8 3 12 16 4 5 11 => 36
  