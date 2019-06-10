var n,i,j,k,l,s,smax:integer;
    a:array[1..1000] of integer;
begin
  read(n);
  smax := -500;
  for i:=1 to n do read(a[i]);
  for i:=1 to n-3 do
    for j:=i+1 to n-2 do
      for k:=j+1 to n-1 do
        for l:=k+1 to n do begin
          s:=a[i]+a[j]+a[k]+a[l];
          if (s mod 2 =0) and (s>smax) then 
            smax := s;
        end;
  if smax=-500 then writeln('Не найдено')
  else writeln(smax);
end.
//8 -5 -13 15 -9 -3 -8 -10 -8 => -2