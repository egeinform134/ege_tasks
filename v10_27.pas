program vtentwentyseven;
var
	amount,i,success,temp,used,number:integer;
	min: array [1..3] of integer;
begin
	success := 1;
	i := 0;
	readln(amount);
	readln(min[1]);
	i := i + 1;
	repeat
		if i = amount then
		begin
			success := 0;
			break;
		end;
		readln(min[2]);
		i := i + 1;
	until min[2] <> min[1];
	repeat
		if i = amount then
		begin
			success := 0;
			break;
		end;
		readln(min[3]);
		i := i + 1;
	until ( min[3] <> min[2] ) and ( min[3] <> min[2] );
	used := i;
	if success = 1
	then
		begin
			if min[3] < min[2] then
			begin
				temp := min[2];
				min[2] := min[3];
				min[3] := temp;
			end;
			if min[2] < min[1] then
			begin
				temp := min[1];
				min[1] := min[2];
				min[2] := temp;
			end;
			if min[3] < min[2] then
			begin
				temp := min[2];
				min[2] := min[3];
				min[3] := temp;
			end;
			for i := 1 to ( amount - used ) do
			begin
				readln(number);
				if number > min[3] then
				begin
					min[1] := min[2];
					min[2] := min[3];
					min[3] := number;
				end;
				if ( number < min[3] ) and ( number > min[2] ) then
				begin
					min[1] := min[2];
					min[2] := number;
				end;
				if ( number < min[2] ) and ( number > min[1] ) then
					min[1] := number;
			end;
			writeln(min[3]);
		end
	else
		writeln('#'); 
end.
