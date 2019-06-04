var s:array[1..1000] of integer;
    n,a,b,i,m:integer; 
begin
  for i:=1 to 1000 do s[i]:=0;
  read(n);
  for i:=1 to n do begin
    read(a,b);
    while b>0 do 
      if a>b then a:=a-b
      else b:=b-a;
    s[a]+=1;
  end;
  m:=0;
  for i:=1 to 1000 do
    if m<s[i] then m:=s[i];
  for i:=1000 downto 1 do
    if s[i]=m then write(i,' ');
end.
// 6  1 3  5 15  6 9  5 4  3 3  36 40 => 3 1