var b:=new Queue<integer>;
    n,i,j,k1,k3,k7,k9,k,x:integer;
begin
  read(n);
  (k1,k3,k7,k9,k):=(0,0,0,0,0);
  for i:=1 to 6 do b.Enqueue(ReadInteger());
  for i:=7 to n do begin
    x := b.Dequeue();
    if x mod 10 = 1 then k1+=1;
    if x mod 10 = 3 then k3+=1;
    if x mod 10 = 7 then k7+=1;
    if x mod 10 = 9 then k9+=1;
    read(x); b.Enqueue(x);
    if x mod 10 = 1 then k+=k3;
    if x mod 10 = 3 then k+=k1;
    if x mod 10 = 7 then k+=k9;
    if x mod 10 = 9 then k+=k7;
  end;
  writeln(k);
end.
//10 17 11 15 24 36 47 13 9 44 53  => 2