var n,i,j,k,p,f:integer;
    a:array[1..10000] of integer;
begin
  read(n); k:=0;
  for i:=1 to n do read(a[i]);
  for i:=1 to n-2 do 
    for j:=i+2 to n do 
      if (a[i]<>0) and (a[j]<>0) then begin
        f:=0;
        for k:=i+1 to j-1 do
          if a[k]=0 then begin
            f:=1;
            break;
          end;
        if f=1 then p+=1;
      end;
  writeln(p);
end.
// 7 1 2 0 3 0 4 5 => 8  