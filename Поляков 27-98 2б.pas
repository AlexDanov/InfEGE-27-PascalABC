var a:array[1..10000] of integer;
    n,i,j,k,ms:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  ms := maxint; 
  for i:=1 to n-1 do 
    for j:=i+1 to n do 
      if a[i]+a[j]<ms then begin 
        ms :=a[i]+a[j];
        k:=1;
      end else if a[i]+a[j]=ms then k+=1;
  writeln(ms,' ',k);
end.