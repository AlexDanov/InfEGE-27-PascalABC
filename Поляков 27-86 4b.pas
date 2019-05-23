var s:array[0..1,0..6] of integer=((0,0,0,0,0,0,0),(0,0,0,0,0,0,0));
    n,i,j,k,x,t:integer;
begin
  read(n);
  for i:=1 to n do begin
    read(x);
    s[x mod 2, x mod 7] += 1;   
  end;
  t:=0;
  for i:=0 to 6 do
    for j:=i to 6 do begin
      k:=(14-i-j) mod 7;
      if (i=j) and (j=k) then t+=s[1,i]*(s[1,i]-1)*(s[1,i]-2) div 6
      else if i=j then t+=s[1,k]*s[1,i]*(s[1,i]-1) div 2
      else if i=k then t+=s[1,j]*s[1,i]*(s[1,i]-1) div 2
      else if k=j then t+=s[1,i]*s[1,k]*(s[1,k]-1) div 2
      else t+=s[1,i]*s[1,j]*s[1,k];
    end;
  for i:=0 to 6 do
    for j:=i to 6 do begin
      k:=(14-i-j) mod 7;
      if i=j then t+=s[1,k]*s[0,i]*(s[0,i]-1) div 2
      else t+=s[0,i]*s[0,j]*s[1,k];
    end;
  writeln(t);
end.
// 7 8 11 14 15 2 4 7 => 2      