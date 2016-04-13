program threeonezerosix;
var
	amount:integer;
	schoolnumber:integer;
	maximum,max_students:integer;
	i,j:integer;
	c:char;
	schools: array [1..99] of integer;
begin
	for i := 1 to 99 do
		schools[i] := 0;
	readln(amount);
	maximum := 0;
	max_students := 0;
	
	for i := 1 to amount do
	begin
		for j := 1 to 2 do
		begin
			repeat
				read(c)
			until c = ' ';
		end;
		readln(schoolnumber);
		schools[schoolnumber] := schools[schoolnumber] + 1;
	end;
	for j := 1 to 99 do
		if schools[j] <> 0 then
			if schools[j] > max_students then
			begin
				max_students := schools[j];
				maximum := j;
			end;
	writeln(maximum);
end.
