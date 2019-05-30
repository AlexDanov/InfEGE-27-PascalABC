var a:array[1..10000] of integer;
    n,i,j,k:integer;
begin
  read(n); k:=0;
  for i:=1 to n do read(a[i]);
  for i:=1 to n-1 do
    for j:=i+1 to n do
      if (j-i<=7)and((a[i]+a[j]) mod 8<>0) then k+=1;
  writeln(k);
end.
// 10 17 4 1 8 3 12 16 4 5 11 => 36