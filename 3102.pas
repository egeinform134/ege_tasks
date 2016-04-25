program threeonezerotwo;
var
	c, append: char;
	amount: array ['0'..'9'] of integer;
	i: integer;
	answer: string;
begin
	append := 'N';
	for c := '0' to '9' do
		amount[c] := 0;
		
	repeat
		read(c);
		if c in ['0'..'9'] then
		begin
			amount[c] := amount[c] + 1;
		end;
	until c = '.';
	answer := '';
	for c := '9' downto '0' do
	begin
		if (amount[c] mod 2 <> 0) then
		begin
			if append = 'N' then
				append := c
			else
			begin
				writeln('NO');
				exit;
			end;
		end;
		for i := 1 to amount[c] div 2 do
			answer := answer + c;
	end;
	if append <> 'N' then
		answer := answer + append;
	for c := '0' to '9' do
	begin
		for i := 1 to amount[c] div 2 do
			answer := answer + c;
	end;
	if ((answer[1] = '0') and (length(answer) = 1)) or (answer[1] <> '0') then
	begin
		writeln('YES');
		writeln(answer);
	end
	else
		writeln('NO');
end.