var a,i,j,n,k:integer;
    b:array[0..7] of integer;
begin 
  read(n); k:=0;
  for i:=0 to 7 do begin
    read(b[i]);
    for j:=0 to i-1 do
      if (b[i]+b[j]) mod 8<>0 then k+=1;
  end;
  for i:=8 to n-1 do begin
    read(b[i mod 8]);
    for j:=0 to 7 do
      if (j<>i mod 8) and ((b[i mod 8]+b[j]) mod 8<>0) then k+=1;
  end;
  writeln(k);
end.
// 10 17 4 1 8 3 12 16 4 5 11 => 36
  