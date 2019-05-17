var n,i,a,s:integer;
    k:array[0..1,0..2] of integer=((0,0,0),(0,0,0));
begin
  read(n);
  for i:=1 to n do begin
    read(a);
    k[sign(a mod 5),a mod 3]+=1;
  end;
  s:=k[0,0]*k[1,0]+k[0,1]*(k[0,2]+k[1,2])+k[1,1]*k[0,2]
     +k[0,0]*(k[0,0]-1) div 2;
  writeln(s);
end.
  