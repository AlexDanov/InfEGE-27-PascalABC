const z=100000;
var n,i,x,y,minxn,maxxn,minxp,maxxp,hn,hp,s:integer;
begin
  read(n);
  (minxn,maxxn,minxp,maxxp,hn,hp) := (0,-z,z,0,0,0);
  for i:=1 to n do begin
    read(x,y);
    if x<0 then begin
      if y=0 then begin
        if x<minxn then minxn := x;
        if x>maxxn then maxxn := x;
      end
      else if hn<abs(y) then hn := abs(y);
    end else if x>0 then
      if y=0 then begin
        if x<minxp then minxp := x;
        if x>maxxp then maxxp := x;
      end
      else if hp<abs(y) then hp := abs(y);
  end;
  if minxn=0 then maxxn:=0;
  if maxxp=0 then minxp:=0;
  s := (maxxp-minxp)*hp;
  if s<(maxxn-minxn)*hn then s :=(maxxn-minxn)*hn;
  writeln(s/2);
end.