program sevensevenseventwo;
var
	amount, i, max_tail, max, number: integer;
	buffer: array [0..7] of integer;
begin
	readln(amount);
	for i := 0 to 7 do
		readln(buffer[i]);
		
	max := -1;
	max_tail := buffer[0];
	
	for i := 8 to amount - 1 do
	begin
		readln(number);
		if buffer[i mod 8] > max_tail then
			max_tail := buffer[i mod 8];
		if number * max_tail > max then
			max := number * max_tail;
		buffer[i mod 8] := number;
	end;
	writeln(max);
end.