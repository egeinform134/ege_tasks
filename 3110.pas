program threeoneonezero;
var
	frequency: array ['a'..'z'] of integer;
	letters: array ['a'..'z'] of char;
	c, i, temp_char, max_pos: char;
	temp: integer;
begin
	for c := 'a' to 'z' do
	begin
		frequency[c] := 0;
		letters[c] := c;
	end;

	read(c);
	while c <> '.' do
	begin
		frequency[c] := frequency[c] + 1;
		read(c);
	end;

	for i := 'a' to 'y' do
	begin
		max_pos := i;
		for c := i to 'z' do
			if frequency[c] > frequency[max_pos] then
				max_pos := c;
		if i <> max_pos then
		begin
			temp := frequency[i];
			frequency[i] := frequency[max_pos];
			frequency[max_pos] := temp;
			temp_char := letters[i];
			letters[i] := letters[max_pos];
			letters[max_pos] := temp_char;
		end;
	end;

	c := 'a';
	while frequency[c] <> 0 do
	begin
		writeln(letters[c], ': ', frequency[c]);
		inc(c);
	end;
end.
