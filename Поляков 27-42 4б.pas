const lim=10001;
var n,i,x,minp1,minp2,maxn1,maxn2,maxg,ming,mp:integer;
begin
  read(n);
  (minp1,minp2,maxn1,maxn2,maxg,ming):=(lim,lim,-lim,-lim,-lim,lim);
  for i:=1 to n do begin
    read(x);
    if x>maxg then maxg:=x;
    if x<ming then ming:=x;
    if x>=0 then 
      if x<minp1 then (minp2,minp1):=(minp1,x)
      else if x<minp2 then minp2 := x;
    if x<=0 then 
      if x>maxn1 then (maxn2,maxn1):=(maxn1,x)
      else if x>maxn2 then maxn2 := x;
  end;
  mp:=maxg*ming;
  if mp>minp1*minp2 then mp:=minp1*minp2;
  if mp>maxn1*maxn2 then mp:=maxn1*maxn2;
  writeln(mp);
end.
     
    