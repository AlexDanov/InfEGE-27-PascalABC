var s:array[0..9] of integer=(0,0,0,0,0,0,0,0,0,0);
    n,a,i,m,f:integer; 
begin
  read(n);
  for i:=1 to n do begin
    read(a);
    while a>0 do begin
      s[a mod 10]+=1;
      a := a div 10;
    end;
  end;
  m :=0;
  repeat
    f := maxint;
    for i:=0 to 9 do
      if (s[i]>m) and (f>s[i]) then f:=s[i];
    for i:=9 downto 0 do
      if s[i]=f then write(i,' ');
    m := f;
  until f = maxint;
end.
// 3 456 20 3452