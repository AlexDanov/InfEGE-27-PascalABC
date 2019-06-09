var k:array[0..1,0..2] of integer=((0,0,0),(0,0,0));
    n,i,a,s:integer;
begin
  read(n);
  for i:=1 to n do begin
    read(a);
    k[sign(a mod 3), i mod 3]+=1;
  end;
  s:=0;
  for i:=0 to 2 do
    s+= k[0,i]*(k[0,i]-1) div 2 + k[0,i]*k[1,i];
  writeln(s);
end.
// 10 1 2 3 4 5 6 7 8 9 10 => 3