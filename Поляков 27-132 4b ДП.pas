var s:array[1..18] of integer;
    i,j,k,n,t,x:integer;
begin
  for i:=1 to 18 do s[i]:=0;
  read(n);
  t:=0;
  for i:=1 to n do begin
    read(x);
    if x<19 then begin
      k:=(21-x) div 2 - 1;          // (21-12)//2-1=3; (21-11)//2-1=4
      for j:=1 to k do              // 12: 1-7 2-6 3-5   11: 1-8 ... 4-5
          t += s[j]*s[20-x-j];
      if x mod 2 = 0 then 
        t += s[k+1]*(s[k+1]-1)div 2;         // 12: 4-4
      s[x]+=1;
    end;
  end;
  print(t);
end.