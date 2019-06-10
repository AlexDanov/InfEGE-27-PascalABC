var x,k:integer;
    c:char;
    s:string;
begin
  read(x); 
  k:=0;
  while x>1 do begin
    if x mod 4 = 3 then c:='A'
    else if x mod 4 = 1 then c:='P'
    else c:='E';
    if c<>'E' then x := x div 4
    else x := x div 2;
    if c<>'P' then k+=1;
    s:=s+c;
  end;
  writeln(s);
  writeln(k);
end.
//5483(10) = ‭1010101101011‬(2)