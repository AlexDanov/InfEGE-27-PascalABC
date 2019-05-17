var n,i,j,k:integer;
    a:array[1..10000] of integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k:=0;
  for i:=1 to n-5 do 
    for j:=i+5 to n do
      if ((a[i]+a[j]) mod 2<>0)and(a[i]*a[j]mod 13=0) then k+=1;
  writeln(k);
end.
// 5 4 13 27 39 7