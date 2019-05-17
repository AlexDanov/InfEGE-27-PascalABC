var a,n,i:integer;
    k:array[0..1,0..1] of integer=((0,0),(0,0));
begin
  read(n);
  for i:=1 to n do begin
    read(a);
    k[a mod 2, sign(a mod 7)]+=1;
  end;
  k:=(k[1,0]*(k[1,0]-1)+k[0,1]*(k[0,1]-1)+k[0,0]*(k[0,0]-1)) div 2 
     + k[0,0]*(k[0,1]+*k[1,0]);
  writeln(k);
end.
    