program maxnum;
var
	c: char;
	i: integer;
	numstring: string;
	numamount: array ['0'..'9'] of integer;
begin
	numstring := '';
	for c := '0' to '9' do
		numamount[c] := 0;

	repeat
		read(c);
		if c in ['0'..'9'] then
			inc(numamount[c]);
	until c = '.';

	for c := '9' downto '0' do
		for i := numamount[c] downto 1 do
			numstring := numstring + c;
	
	if numstring <> '' then
		writeln(numstring)
	else
		writeln(-1);
end.
