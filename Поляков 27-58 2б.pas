var n,i,j,mp:integer;
    a:array[1..10000] of integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  mp:=0;
  for i:=1 to n-8 do 
    for j:=i+8 to n do
      if a[i]*a[j]>mp then mp := a[i]*a[j];
  writeln(mp);
end.
// 10 100 45 55 245 35 25 10 10 10 26 => 2600