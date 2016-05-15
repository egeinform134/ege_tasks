program diag_27;
var
	amount, i, x, y, triangles: integer;
	quarter: array [1..4] of integer;
begin
	readln(amount);
	for i := 1 to 4 do
		quarter[i] := 0;

	for i := 1 to amount do
	begin
		readln(x,y);
		if ( x > 0 ) and ( y > 0 ) then
			quarter[1] := quarter[1] + 1;
		if ( x > 0 ) and ( y < 0 ) then
			quarter[2] := quarter[2] + 1;
		if ( x < 0 ) and ( y < 0 ) then
			quarter[3] := quarter[3] + 1;
		if ( x < 0 ) and ( y > 0 ) then
			quarter[4] := quarter[4] + 1;
	end;
	triangles := (quarter[1] * (abs(quarter[1] - 1)) * quarter[4] + quarter[4] * (abs(quarter[4] - 1)) * quarter[1] + quarter[2] * (abs(quarter[2] - 1)) * quarter[3] + quarter[3] * (abs(quarter[3] - 1)) * quarter[2]);
	writeln(triangles / 2);
end.
