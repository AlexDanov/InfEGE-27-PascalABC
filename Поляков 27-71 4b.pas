var s:array[0..15] of integer;
    n,d,a,i,m:integer;
begin
  for i:=0 to 15 do s[i]:=0;
  read(n);
  for i:=1 to n do begin
    read(a);
    while a>0 do begin 
      s[a mod 16]+=1;
      a := a div 16;
    end;
  end;
  m:=0;
  for i:=0 to 15 do
    if s[i] mod 2 <> 0 then m+=1;
  if m<2 then writeln(1)
  else writeln(0);
end.
    
  