// |{(ai;aj)}|=?, где i<j & ai+aj>20
begin
  var s := Arr(0)*21;
  var k:= 0;
  loop ReadInteger do begin
    var x := ReadInteger;
    k += s.Skip(max(1,21-x)).Sum();
    s[min(x,20)]+=1;
  end;
  print(k);
end.