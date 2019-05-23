var c,s:array[0..6] of integer;  // чет/нечет
    n,i,j,k,x,t:integer;
begin
  for i:=0 to 6 do (c[i],s[i]):=(0,0);
  read(n);
  for i:=1 to n do begin
    read(x);
    if x mod 2 = 0 then c[x mod 7] += 1 
    else s[x mod 7] += 1; 
  end;
  t:=0;
  for i:=0 to 6 do
    for j:=i to 6 do begin
      k:=(14-i-j) mod 7; 
      // Н+Н+Н
      if (i=j) and (j=k) then t+=s[i]*(s[i]-1)*(s[i]-2) div 6
      else if i=j then t+=s[k]*s[i]*(s[i]-1) div 2
      else if i=k then t+=s[j]*s[i]*(s[i]-1) div 2
      else if k=j then t+=s[i]*s[k]*(s[k]-1) div 2
      else t+=s[i]*s[j]*s[k];
      // Ч+Ч+Н
      if i=j then t+=c[i]*(c[i]-1) div 2 * s[k]
      else t+=c[i]*c[j]*s[k];
    end;
  writeln(t);
end.
// 7 8 11 14 15 2 4 7 => 2      