var s:array[0..9] of integer=(0,0,0,0,0,0,0,0,0,0);
    n,a,i,m,f:integer; 
begin
  read(n);
  f:=0; 
  for i:=1 to n do begin
    read(a);
    while a>0 do begin
      s[a mod 10]+=1;
      f := max(f,s[a mod 10]);
      a := a div 10;
    end;
  end;
  for m:=1 to f do 
    for i:=9 downto 0 do
      if s[i]=m then write(i,' ');
end.
// 3 456 20 3452