var a:array[1..10000] of integer;
    n,i,j,k:integer;
begin
  read(n); k:=0;
  for i:=1 to n do read(a[i]);
  for i:=1 to n-5 do
    for j:=i+5 to n do
      if (a[i]-a[j]) mod 5=0 then k+=1;
  writeln(k);
end.
// 10 1 2 3 4 5 6 7 8 9 10 => 5