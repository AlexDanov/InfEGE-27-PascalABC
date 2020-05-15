const m=20;
var s:array[1..m-1] of integer;  //1+1+18
    i,j,k,t,x,n:integer;
begin
  for i:=1 to m-1 do s[i]:=0;
  read(n);
  for i:=1 to n do begin
    read(x);
    if x<m then
      s[x]+=1;
  end;
  t:=0;
  for i:=1 to m do 
    for j:=i to m do 
      for k:=j to m do
        if i+j+k=m then
          if i=j then t += s[k]*s[i]*(s[i]-1) div 2
          else if j=k then t += s[i]*s[j]*(s[j]-1) div 2
          else t += s[i]*s[j]*s[k];
  print(t);
end.