var n,i,j,k:integer;
    a:array[1..10000] of integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  k:=0;
  for i:=1 to n-1 do 
    for j:=i+1 to n do
      if ((a[i]+a[j])mod 12=0) then begin
        writeln(a[i],' ',a[j]);
        k+=1;
      end;
  writeln(k);
end.