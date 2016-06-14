program pr2;
const
	n = 9;
var
	buf: array[0..n-1] of real;
	prevmin, avrmin: real;
	i, amount: integer;
begin
	readln(amount);
	for i := 0 to n-1 do
		read(buf[i]);
	prevmin := 1001.0;
	avrmin := 1001.0;
	for i := n to amount - 1 do
	begin
		if (buf[i mod n] < prevmin) then
			prevmin := buf[i mod n];
		read(buf[i mod n]);
		if (buf[i mod n] + prevmin)/2 < avrmin then
			avrmin := (buf[i mod n] + prevmin) / 2;
	end;
	writeln(avrmin:5:2);
end.
