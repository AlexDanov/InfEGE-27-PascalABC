const lim=100001;
var n,i,x,min01,min02,min11,min12,mins:integer;
begin
  read(n);
  (min01,min02,min11,min12):=(lim,lim,lim,lim);
  for i:=1 to n do begin
    read(x);
    if x mod 2=0 then begin 
      if x<min01 then (min02,min01):=(min01,x)
      else if x<min02 then min02 := x;
    end else 
      if x<min11 then (min12,min11):=(min11,x)
      else if x<min12 then min12 := x;
  end;
  mins:=min01+min02;
  if mins>min11+min12 then mins:=min11+min12;
  if mins<lim then writeln(mins)
  else writeln(min01+min11);
end.