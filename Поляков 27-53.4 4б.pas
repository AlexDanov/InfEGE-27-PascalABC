var n,i,sa,sb,sc,a,b,c:integer;
begin
  read(n,sa,sb,sc);
  for i:=2 to n do begin
    read(a,b,c);
    (sa,sb,sc) := (max(sa,sb)+a,
                   max(sa,max(sb,sc))+b,
                   max(sb,sc)+c);
  end;
  writeln(max(sa,max(sb,sc)));
end.