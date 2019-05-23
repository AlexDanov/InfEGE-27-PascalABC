const s=5;
var b:=new Queue<integer>();
    k:array[0..2] of integer=(0,0,0);
    i,x,t:integer;
begin
  for i:=1 to s do b.Enqueue(ReadInteger());
  t:=0; 
  read(x);
  while x>0 do begin
    k[b.Dequeue() mod 3]+=1;
    if x = 0 then break;
    b.Enqueue(x);
    t+=k[(3 - x mod 3) mod 3];
    read(x)
  end;
  writeln(t);
end.
// 10 12 81 2 7 33 99 21 11 121 10 0 => 5