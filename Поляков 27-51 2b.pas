var a:array[1..10000] of integer;
    n,x,i,j,m:integer;
begin
  n:=0;
  read(x);
  while x>0 do begin
    n+=1;
    a[n]:=x;
    read(x);
  end;
  m:=0;
  for i:=1 to n do
    for j:=i+1 to n do
      if (a[i]*a[j]mod 7=0) and (a[i]*a[j]mod 49<>0) and
         (a[i]*a[j]>m) then  m:=a[i]*a[j];
  writeln(m);
end.
// 6 7 8 9 0 64 => 63