const s=6;
var n,i,R,t:integer;
    k:array[0..9] of integer=(0,0,0,0,0,0,0,0,0,0); //счетчики
    b:=new Queue<integer>; // очередь
begin
  read(n);
  for i:=1 to s do b.Enqueue(ReadInteger() mod 10);
  R:=0;
  for i:=s+1 to n do begin
    k[b.Dequeue()]+=1;
    t := ReadInteger() mod 10;
    if t in [1,3] then R+=k[4-t];
    if t in [7,9] then R+=k[16-t];
    b.Enqueue(t);
  end;
  writeln(R);
end.