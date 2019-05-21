var i,n,maxp,min,x:integer;
begin
  read(n,min);
  maxp := -10000;
  for i:=2 to n do begin
    read(x);
    if (x-min>maxp) then maxp := x-min;
    if (x<min) then min := x;
  end;
  writeln(maxp);
end.
// 9 10 2 5 4 8 7 1 6 4 = 6