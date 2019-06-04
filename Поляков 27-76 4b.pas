var s:array[0..10] of integer=(maxint,0,0,0,0,0,0,0,0,0,0);
    n,a,i,m,L:integer; 
begin
  read(n);
  for i:=1 to n do begin
    read(a);
    L:=0;
    while a>0 do begin 
      a := a div 10;
      L+=1;
    end;  
    s[L]+=1;
  end;
  m:=0;
  for i:=1 to 9 do
    if (s[i]>0)and(s[i]<s[m]) then m:=i;
  writeln(m,' ',s[m]);
  writeln(s);
end.
// 5 12 417 125 327 4801