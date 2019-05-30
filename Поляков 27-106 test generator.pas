const n=7;nn=n*(n+1)div 2;
var a:=new List<(integer,integer)>();
  i,j:integer;
begin
  for i:=1 to n do
    for j:=i to n do
      a.Add((i,j));
      
  for i:=0 to nn-2 do begin
    j:=random(i+1,nn-1);
    (a[i],a[j]):=(a[j],a[i])
  end;
  print(nn);
  foreach var c in a do
  if random(2)=0 then print(c.Item1,c.Item2)
  else print(c.Item2,c.Item1);
end.