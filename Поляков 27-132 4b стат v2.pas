const m=20;
var s:array[1..m-1] of integer;  
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
  for i:=1 to 6 do begin
    t += s[m-2*i]*s[i]*(s[i]-1) div 2;
    for j:=i+1 to 9 do begin  
      k:= m-j-i; // i+j+k=m
      if k=j then t += s[i]*s[j]*(s[j]-1) div 2
      else if k>j then t += s[i]*s[j]*s[k];
    end;
  end;
  print(t);
end.