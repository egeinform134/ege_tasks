program diag_27;
var
        amount, i, x, y: integer;
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
                if ( x < 0 ) and ( y > 0 ) then
                        quarter[2] := quarter[2] + 1;
		if ( x < 0 ) and ( y < 0 ) then
			quarter[3] := quarter[3] + 1;
                if ( x > 0 ) and ( y < 0 ) then
			quarter[4] := quarter[4] + 1;
	end;
        writeln((quarter[1]*quarter[4]*(quarter[1]+quarter[4]-2)+quarter[2]*quarter[3]*(quarter[2]+quarter[3]-2)) div 2);
end.
