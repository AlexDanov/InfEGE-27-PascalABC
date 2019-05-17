var a:array[1..10000] of integer;
    n,i,j,m:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  m:=-1;
  for i:=1 to n-1 do 
    for j:=i+1 to n do 
      if ((a[i]+a[j])mod 3=0) and ((i+j)mod 3=0) 
         and(a[i]+a[j]>m) then m:=a[i]+a[j];
  writeln(m);
end.