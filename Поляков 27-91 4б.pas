var a:array[1..100000] of integer;
    n,j,pos,m,i,ans:integer;
begin
  read(n,m);
  for i:=1 to n do read(a[i]);
  for i:=1 to m do begin
    pos:=1;
    for j:=2 to n do 
      if a[pos]>a[j] then pos := j;
    a[pos] += 1;
  end;
  ans :=0;
  for i:=1 to n do 
    ans:=max(ans,a[i]);
  writeln(ans);
end.
// 5 20  1 2 3 4 5 => 7