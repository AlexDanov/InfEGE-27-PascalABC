var a:array[1..10000] of integer;
    n,i,j,minp,R:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  minp:=1000001;
  for i:=1 to n-6 do 
    for j:=i+6 to n do
      if (a[i]*a[j]<minp) and (a[i]*a[j]mod 2=0)
        then minp:=a[i]*a[j];
  if minp<1000001 then writeln(minp)
  else writeln(-1);
end.
// 11 12 45 5 3 17 23 21 20 19 18 17 => 54