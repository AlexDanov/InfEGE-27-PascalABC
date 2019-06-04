var s:array[0..27] of integer;
    n,a,i,m,z:integer; 
begin
  for i:=0 to 27 do s[i]:=0;
  read(n);
  for i:=1 to n do begin
    read(a);
    z:=0;
    while a>0 do begin
      z := z + a mod 10;
      a := a div 10;
    end;
    s[z]+=1;
  end;
  m:=0;
  for i:=1 to 27 do
    if s[m]<s[i] then m:=i;
  writeln(m);
end.