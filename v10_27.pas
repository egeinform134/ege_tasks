program vtentwentyseven;
var
	amount, i, number: integer;
	min: array [1..3] of integer;
	mincount: integer;
begin
	readln(amount);
	mincount := 0;

	for i := 1 to amount do
	begin
		readln(number);
		if (mincount = 0) then
		begin
			mincount := mincount + 1;
			min[1] := number;
			continue;
		end;
		if (number = min[1]) then
			continue;
		if (number < min[1]) then
		begin
			if mincount > 1 then
				min[3] := min[2];
			min[2] := min[1];
			min[1] := number;
 			mincount := mincount + 1;
			continue;
		end;
		if (mincount = 1) then
		begin
			mincount := mincount + 1;
			min[2] := number;
			continue;
		end;
		if (number = min[2]) then
			continue;
		if (number < min[2]) then
		begin
			min[3] := min[2];
			min[2] := number;
 			mincount := mincount + 1;
			continue;
		end;
		if (mincount = 2) then
		begin
			mincount := mincount + 1;
			min[3] := number;
			continue;
		end;
		if (number = min[3]) then
			continue;
		if (number < min[3]) then
		begin
			min[3] := number;
 			mincount := mincount + 1;
			continue;
		end;
	end;
	if mincount >= 3 then
		writeln(min[3])
	else
		writeln('#');
end.
