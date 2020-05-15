var b,c:array[1..19] of integer;
    i,j,k,n,a,x:integer;
begin
  for i:=1 to 19 do (b[i],c[i]):=(0,0);
  read(n);
  a:=0;
  for i:=1 to n do begin
    read(x);
    if x<20 then begin
      a+=b[20-x]; // кол-во троек
      for j:=1 to 20-x-1 do
        b[j+x]+=c[j];  // кол-во пар с суммой j+x
      c[x]+=1; // счетчик чисел x
    end;
  end;
  print(a);
end.