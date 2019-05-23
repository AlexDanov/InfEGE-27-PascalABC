const s=5;
var b:=new Queue<integer>();
    k:array[0..2] of integer=(0,0,0);
    n,i,x,t:integer;
begin
  read(n);
  for i:=1 to s do b.Enqueue(ReadInteger());
  t:=0;
  for i:=s+1 to n do begin
    x := b.Dequeue();
    k[x mod 3]+=1;
    read(x); b.Enqueue(x);
    if x mod 3 = 0 then t+=k[0];
    if x mod 3 = 1 then t+=k[2];
    if x mod 3 = 2 then t+=k[1];
  end;
  writeln(t);
end.
// 10 12 81 2 7 33 99 21 11 121 10 => 5