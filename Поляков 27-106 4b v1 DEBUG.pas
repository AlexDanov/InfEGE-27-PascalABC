var n,i,a,b,c,d,L,Lmax:integer;
    s,smax:string;
begin
  read(n,a,b); (L,Lmax):=(1,1);
  s := a+' '+b+' ';
  for i:=2 to n do begin
    read(c,d);
    if b=c then begin L+=1; s+=' '+c+' '+d+' '; end
    else if b=d then begin
      swap(c,d);
      L+=1;
      s+=' '+c+' '+d+' ';
    end else if a=c then begin L:=2; s:=b+' '+a+'  '+c+' '+d+' '; end
    else if a=d then begin
      swap(c,d);
      L:=2;
      s:=b+' '+a+'  '+c+' '+d+' ';
    end else begin L:=1; s:=c+' '+d+' '; end;
    if L>Lmax then (Lmax,smax):=(L,s);
    (a,b):=(c,d);
  end;
  writeln(Lmax);
  writeln(smax);
end.
// 5  1 2  2 3  5 4  5 5  5 1  => 3
// 28 5 1 6 6 7 7 3 3 2 3 1 7 1 3 6 3 5 6 3 5 2 7 4 6 3 7 2 2 6 1 4 7 6 2 1 1 4 2 7 5 4 3 4 1 1 2 4 4 2 5 5 4 5 5 6 7 => 5