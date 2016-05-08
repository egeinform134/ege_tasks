program eighteenmarchtwentyseven;
var
	amount, i, x, y: integer;
	quarter: array [1..4] of integer;
begin
	readln(amount);
	for i := 1 to 4 do
		quarter[i] := 0;
	
	for i := 1 to amount do
	begin
		readln(x, y);
		if ( x = 0 ) or ( y = 0 ) then
			continue;
		if x > 0 then
			if y > 0 then
				quarter[1] := quarter[1] + 1
			else
				quarter[2] := quarter[2] + 1
		else
			if y < 0 then
				quarter[3] := quarter[3] + 1
			else
				quarter[4] := quarter[4] + 1;
	end;
	writeln(quarter[1] * ( quarter[2] + quarter[4] ) + quarter[2] * quarter[3] + quarter[3] * quarter[4]);
end.
