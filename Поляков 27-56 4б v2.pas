const s=6;
var n,i:integer;
    min1,mins:real;
    b:= new Queue<real>(); 
begin
  read(n);
  min1 := 1001;
  mins := 1000001;
  for i:=1 to s do b.Enqueue(ReadInteger());
  for i:=s+1 to n do begin
    min1 := min(b.Dequeue(),min1);
    b.Enqueue(ReadInteger());
    if (min1<>1001) and (b.Last()*min1<mins) then mins:=b.Last()*min1;
  end;
  writeln(mins);
end.
// 11 12 45 5 4 25 23 21 20 10 12 26 => 48