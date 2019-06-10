// (c) Евгений Джобс
var n,min,sum,i,k,x,count:integer;
begin
  read(n,min);
  (sum, k, count) := (20001, 0, 1);
  for i:=2 to n do begin
    read(x);
    if x+min < sum then begin
      sum := x+min;
      k := count;
    end else if x+min=sum then
      k += count;

    if min > x then begin
      min := x;
      count := 1;
    end else if x=min then
      count := count + 1;
  end;
  writeln(sum,' ',k);
end.
// 10 1 2 3 1 2 3 1 2 3 1 => 2 6
// 5 2 2 1 2 2 => 3 4