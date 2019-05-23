var a:array[1..10000] of integer;
    n,i,j,k,s:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  s:=0;
  for i:=1 to n-2 do 
    for j:=i+1 to n-1 do 
      for k:=j+1 to n do 
        if (a[i]+a[j]+a[k])mod 12=0 then s+=1;
  writeln(s);
end.