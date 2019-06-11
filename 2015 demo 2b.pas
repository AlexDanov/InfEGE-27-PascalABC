var a:array[1..10000] of real;
    n,i,j:integer;
    minp,R:real;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  minp:=1000001;
  for i:=1 to n-6 do 
    for j:=i+6 to n do
      if (a[i]*a[j]<minp)
        then minp:=a[i]*a[j];
  writeln(minp);
end.
// 11 12 45.3 5.5 4 25 23 21 20 10 12 26 => 48