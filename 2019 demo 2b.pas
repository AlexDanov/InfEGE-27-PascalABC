var a:array[1..10000] of integer;
    n,i,j,k:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k:=0;
  for i:=1 to n-4 do 
    for j:=i+4 to n do
      if (a[i]*a[j]mod 29=0) then k+=1;
  writeln(k);
end.
// 7 58 2 3 5 4 1 29 => 5