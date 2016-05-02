program onezerothreezerothree;
var
	a_max: array [1..2] of integer;
	i, a, b, amount: integer;
	max_s: integer;
begin
	for i := 1 to 2 do
		a_max[i] := 0;
	
	readln(amount);

	for i := 1 to amount do
	begin
		readln(a,b);
		if a = b then
			if abs(a) > a_max[1] then
				a_max[1] := abs(a);
		if a + b = 0 then
			if abs(a) > a_max[2] then
				a_max[2] := abs(a);
	end;
	
	max_s := a_max[1] * a_max[2];
	if max_s = 0 then
		writeln('FAIL')
	else 
		writeln(max_s);
end.
