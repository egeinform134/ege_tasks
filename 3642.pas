program threesixfourtwo;
var
	letters, len, shortest, i: integer;
	spell: string;
	c: char;
begin
	letters := 0;
	spell := '';

	while true do
	begin
		read(c);
		if c <> '.' then
		begin
			letters := letters + 1;
			spell := spell + c;
		end
		else
		begin
			spell := spell + ' ';
			letters := letters + 1;
			break;
		end;
	end;

	writeln(letters - 1, ' букв');
	writeln(spell);
	
	shortest := 201;
	len := 0;

	for i := 1 to letters do 
		if spell[i] <> ' ' then
			len := len + 1
		else
		begin
			if len < shortest then
				shortest := len;
			len := 0;
		end;

	writeln(shortest);

	for i := 1 to letters do
	begin
		if spell[i] in ['A'..'Z'] then
			if ord(spell[i]) + shortest <= ord('Z') then
				spell[i] := chr( ord( spell[i] ) + shortest)
			else
				spell[i] := chr( ord( spell[i] ) + shortest - 26);
		if spell[i] in ['a'..'z'] then
			if ord(spell[i]) + shortest <= ord('z') then
				spell[i] := chr( ord( spell[i] ) + shortest)
			else
				spell[i] := chr( ord( spell[i] ) + shortest - 26);
	end;
	writeln(spell);
end.