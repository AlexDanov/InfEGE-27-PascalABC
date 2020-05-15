begin
  var s := Arr(0)*34;
  var k := 0;
  loop ReadInteger do begin
    var x := min(34,ReadInteger);
    for var j:=x+1 to 34-x do k += s[j];
    s[x] += 1;
  end;
  print(k);
end.    
    
// 6 32 1 16 7 22 16