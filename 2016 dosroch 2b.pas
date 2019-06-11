var a:array[1..10000] of integer;
    n,i,j,minp,R:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  minp:=1000001;
  for i:=1 to n-1 do 
    for j:=i+1 to n do
      if (a[i]*a[j]<minp) and (a[i]*a[j]mod 6=0)
        then minp:=a[i]*a[j];
  if minp<1000001 then writeln(minp)
  else writeln(0);
end.
// 6 30 6 5 3 4 300 => 12