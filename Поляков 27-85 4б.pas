var s:array[0..11] of integer=(0,0,0,0,0,0,0,0,0,0,0,0);
    n,i,a,k:integer;
begin
  read(n);
  for i:=1 to n do begin
    read(a);
    s[a mod 12]+=1;
  end;
  k:=0;
  for i:=0 to 6 do 
    if i mod 6 = 0 then k+=s[i]*(s[i]-1) div 2
    else k+=s[i]*s[12-i];
  writeln(k);
end.
  