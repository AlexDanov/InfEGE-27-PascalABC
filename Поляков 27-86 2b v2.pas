var a:array[1..10000] of integer;
    n,i,j,k,s,z:integer;
begin
  read(n);
  for i:=1 to n do read(a[i]);
  s:=0;
  for i:=1 to n-2 do 
    for j:=i+1 to n-1 do 
      for k:=j+1 to n do 
        //if (z mod 7=0)and(z mod 2<>0) then s+=1;
        if (a[i]+a[j]+a[k]) mod 14 = 7 then s+=1; // эквивалентное условие
  writeln(s);
end.
// 7 8 11 14 15 2 4 7 => 2  