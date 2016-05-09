program ninesixsixtwo;
var
	amount, max_2, max_13, max_26, max_26_2, max, number, i: integer;
begin
	readln(amount);
	max_2    := 0;
	max_13   := 0;
	max_26   := 0;
	max_26_2 := 0;
	max    := 0;
	for i := 1 to amount do
	begin
		readln(number);
		if ( number mod 26 = 0 ) and ( number >= max_26 ) then
		begin
			max_26_2 := max_26;
			max_26 := number;
			continue;
		end;

		if ( number mod 26 = 0 ) and ( number > max_26_2 ) then
		begin
			max_26_2 := number;
			continue;
		end;

		if ( number mod 13 = 0 ) and ( number > max_13 ) then
		begin
			max_13 := number;
			continue;
		end;

		if ( number mod 2 = 0 ) and ( number > max_2 ) then
		begin
			max_2 := number;
			continue;
		end;

		if number > max then
			max := number;

	end;
	writeln(max_26);
	writeln(max_26_2);
	writeln(max_13);
	writeln(max_2);
	writeln(max);
end.
