var s:array[0..11] of integer=(0,0,0,0,0,0,0,0,0,0,0,0);
    n,i,j,k,x:integer;
begin
  read(n);
  for i:=1 to n do 
    s[ReadInteger() mod 12] += 1;    // 17+31=(12+5)+(24+7)=(12+24)+(5+7)=48
  //k:=(s[0]*(s[0]-1)+ s[6]*(s[6]-1)) div 2 +
  //    s[1]*s[11]+s[2]*s[10]+s[3]*s[9]+s[4]*s[8]+s[5]*s[7];
  k:=0; // эквивалентно циклом
  for i:=0 to 6 do
    if i mod 6 = 0 then k+=s[i]*(s[i]-1) div 2
    else k+=s[i]*s[12-i];
  writeln(k);
end.
      