var n,i,j,k:integer;
    a:array of integer;
begin
  read(n);
  setlength(a,n);
  for i:=0 to n-1 do read(a[i]);
  k:=0;
  for i:=1 to n-2 do 
    for j:=i+1 to n-1 do
      if a[i]*a[j]mod 14 <>0 then k+=1;
  writeln(k);
end.