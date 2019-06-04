var s:array[0..9] of integer;
    n,d,a,i,m:integer;
begin
  for i:=0 to 9 do s[i]:=0;
  read(n);
  for i:=1 to n do begin
    read(a);
    while a>0 do begin 
      d := a mod 10;
      s[d]:=s[d]+1;
      a := a div 10;
    end;
  end;
  m:=0;
  for i:=0 to 9 do
    if s[i]>m then m:=s[i];
  for i:=9 downto 0 do
    if s[i]=m then write(i,' ');
end.
    
  