var s:array[1..19] of integer;
    i,k,n,x:integer;
begin
  for i:=1 to 19 do s[i]:=0;
  read(n);
  for i:=1 to n do begin
    read(x);
    if x<20 then s[x]+=1;
  end;
  k := s[10]*(s[10]-1) div 2;
  for i:=1 to 9 do
    k+=s[i]*s[20-i];
  print(k);
end.