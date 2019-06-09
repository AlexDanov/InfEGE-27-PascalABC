var n,i,d,k:integer;
    s:array[0..99] of integer;
begin 
  read(n);
  for i:=1 to 99 do s[i]:=0;
  for i:=1 to n do begin
    read(d,k);
    s[k mod d]+=1;
  end;
  k:=0; s[0]:=0;
  for i:=99 downto 1 do 
    if s[i]>s[k] then k:=i;
  writeln(k);
end.