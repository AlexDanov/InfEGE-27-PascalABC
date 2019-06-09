var k:array[0..2,0..2] of integer=((0,0,0),(0,0,0),(0,0,0));
    n,i,a,s:integer;
begin
  read(n);
  for i:=1 to n do begin
    read(a);
    k[a mod 3, i mod 3]+=1;
  end;
  s:=0;
  for i:=0 to 2 do
    s+= k[0,i]*(k[0,i]-1) div 2 + k[0,i]*(k[1,i]+k[2,i]);
  writeln(s);
end.