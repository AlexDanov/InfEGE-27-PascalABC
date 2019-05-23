var s:array[0..11] of integer=(0,0,0,0,0,0,0,0,0,0,0,0);
    n,i,j,k,x:integer;
begin
  read(n);
  for i:=1 to n do 
    s[ReadInteger() mod 12] += 1;   
  k:=0;
  for i:=0 to 11 do
    for j:=i to 11 do begin
      k:=(24-i-j) mod 12;
      if (i=j) and (j=k) then k+=s[i]*(s[i]-1)*(s[i]-2) div 6
      else if i=j then k+=s[k]*s[i]*(s[i]-1) div 2
      else if i=k then k+=s[j]*s[i]*(s[i]-1) div 2
      else if k=j then k+=s[i]*s[k]*(s[k]-1) div 2
      else k+=s[i]*s[j]*s[k];
    end;
  writeln(k);
end.
      