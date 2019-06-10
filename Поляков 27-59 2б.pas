var n,i,j,ms:integer;
    a:array[1..10000] of integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  ms:=maxint;
  for i:=1 to n-4 do 
    for j:=i+4 to n do
      if a[i]+a[j]<ms then ms := a[i]+a[j];
  writeln(ms);
end.