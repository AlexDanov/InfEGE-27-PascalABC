// 3<=N<=1000, x>0, max(ai+aj),i<imin<j, 1<imin<N
var a:array[1..1000] of integer;
    i,j,n,iL,iR,L,R:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  (iL,iR):=(2,2);
  for i:=3 to n-1 do begin
    if a[i]<a[iL] then iL := i;
    if a[i]=a[iL] then iR := i;
  end;
  (L,R) := (a[i],a[n]);
  for i:=1 to iL-1 do
    if L<a[i] then L := a[i];
  for i:=iR+1 to n do
    if R<a[i] then R := a[i];
  print(L,R,L+R);
end.