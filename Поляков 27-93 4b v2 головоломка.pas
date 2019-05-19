const s=6;
var n,i,R,t:integer;
    k:array[0..9] of integer=(0,0,0,0,0,0,0,0,0,0); //счетчики
    b:array[0..s-1] of integer; // циклический буфер
begin
  read(n);
  for i:=0 to s-1 do read(b[i]);
  R:=0;
  for i:=s+1 to n do begin
    k[b[i mod s] mod 10]+=1;
    read(b[i mod s]);
    t := b[i mod s] mod 10;
    if t in [1,3] then R+=k[4-t];
    if t in [7,9] then R+=k[16-t];
  end;
  writeln(R);
end.