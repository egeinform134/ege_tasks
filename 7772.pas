program sevensevenseventwo;
const
	n = 8;
var
	amount, i, max_tail, max, number: integer;
	buffer: array [0..n-1] of integer;
begin
	readln(amount);
	for i := 0 to n-1 do
		readln(buffer[i]);
		
	max := -1;
	max_tail := buffer[0];
	
	for i := n to amount - 1 do
	begin
		readln(number);
		if buffer[i mod n] > max_tail then
			max_tail := buffer[i mod n];
		if number * max_tail > max then
			max := number * max_tail;
		buffer[i mod n] := number;
	end;
	writeln(max);
end.