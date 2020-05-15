var a:array[1..10000] of integer; 
    i,j,n,maxS,s,k:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  maxS := 0;
  for i:=1 to n-1 do
    if a[i]>0 then begin
      k := 0;
      for j:=i+1 to n do 
        if a[j]>0 then begin
          s := a[i]+a[j];
          if (k>0)and(s mod 3=0)and(s>maxS) then
            maxS := s;
        end else k+=1;
    end;
  print(maxS);
end.