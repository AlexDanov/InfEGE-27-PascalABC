const s=5;
var b:=new Queue<integer>();
    k:array[0..2] of integer=(0,0,0);
    n,i,x,t:integer;
begin
  read(n);
  for i:=1 to s do b.Enqueue(ReadInteger() mod 3);
  t:=0;
  for i:=s+1 to n do begin
    x := b.Dequeue();
    k[x]+=1;
    x := ReadInteger() mod 3; 
    b.Enqueue(x);
    t+=k[(3 - x) mod 3];
  end;
  writeln(t);
end.
// 10 12 81 2 7 33 99 21 11 121 10 => 5