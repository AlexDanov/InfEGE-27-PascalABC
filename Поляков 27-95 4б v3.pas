const s=4;
var n,i,k,d:integer;
    t:array[0..9] of integer=(0,0,0,0,0,0,0,0,0,0);
    b:=new Queue<integer>();
begin
  read(n);k:=0;
  for i:=1 to s do b.Enqueue(readinteger() mod 10);
  for i:=s+1 to n do begin
    t[b.Dequeue()]+=1;
    d := readinteger() mod 10;
    if d in [1,9] then k+=t[d];
    if d in [3,7] then k+=t[10-d];
    b.Enqueue(d);
  end;
  writeln(k);
end.
// 10 12 81 2 7 33 99 21 11 121 10 => 3