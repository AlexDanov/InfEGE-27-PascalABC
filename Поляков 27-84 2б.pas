var n,i,j,m1,m2:integer;
    a:array[1..10000] of integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  (m1,m2):=(0,0);
  for i:=1 to n-1 do 
    for j:=i+1 to n do
      if (a[i]*a[j]mod 5=0) and ((a[i]+a[j])mod 2<>0) and 
         (a[i]*a[j]>m1*m2) then (m1,m2):=(a[i],a[j]);
  writeln(m1,' ',m2);
end.