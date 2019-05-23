var a:array[1..10000] of integer;
    n,i,j,k:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k:=0;
  for i:=1 to n-6 do 
    for j:=i+6 to n do 
      if a[i]*a[j]mod 10=3 then k+=1;
  writeln(k);
end.