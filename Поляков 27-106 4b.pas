var n,i,a,b,c,d,L,Lmax:integer;
begin
  (L,Lmax):=(1,1);
  read(n,a,b); 
  for i:=2 to n do begin
    read(c,d);
    if b=c then  //  [a|b] = [c|d]
      L += 1 
    else if b=d then begin //  [a|b] = [d|c]
      (c,d) := (d,c);
      L += 1;
    end else if a=c then // [b|a] = [c|d]
      L := 2
    else if a=d then begin // [b|a] = [d|c]
      (c,d) := (d,c);
      L := 2
    end else // [b|a] != [d|c], [1|2] и [3,4]
      L := 1;
    if L>Lmax then Lmax := L;
    (a,b):=(c,d);
  end;
  print(Lmax);
end.