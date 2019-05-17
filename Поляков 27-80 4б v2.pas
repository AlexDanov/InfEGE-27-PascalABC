var x,n,i:integer;
    k:array[0..1,0..1] of integer=((0,0),(0,0));
begin
  read(n);
  for i:=1 to n do begin
    read(x);
    k[x mod 2, sign(x mod 13)]+=1;
  end;
  k:=k[0,0]*(k[1,1]+k[1,0])+k[1,0]*k[0,1];
  writeln(k);
end.
    