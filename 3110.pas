program threeoneonezero;
var
	letters: array ['a'..'z'] of integer;
	prior: array [1..26] of char;
	c: char;
begin
	for c := 'a' to 'z' do
		letters[c] := 0;
	
	while true do
	begin
		read(c);
		if c <> '.' then
			letters[c] := letters[c] + 1
		else
			break;
	end;

	for c := 'a' to 'z' do
		if letters[c] <> 0 then
		begin
			if letters[c] > max then
			begin
				prior
			end;
		end;
end.
