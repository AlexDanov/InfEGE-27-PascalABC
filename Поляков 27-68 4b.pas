var s:array[0..9] of integer=(maxint,0,0,0,0,0,0,0,0,0);
    n,a,i,m:integer; 
begin
  read(n);
  for i:=1 to n do begin
    read(a);
    while a>9 do a := a div 10;
    s[a]+=1;
  end;
  m:=0;
  for i:=1 to 9 do
    if (s[i]>0)and(s[m]>s[i]) then m:=i;
  write(m);
end.