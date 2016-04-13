program threeonezeroseven;
var
	c:char;
	name,surname:string;
	amount,schoolnum,mark,i,firstresult,secondresult,winners,secondwinners:integer;
	firstns,secondns:string;
begin
	firstresult := 0;
	secondresult := 0;
	winners := 1;
	secondwinners := 0;
	readln(amount);

	for i := 1 to amount do
	begin
		name := '';
		surname := '';
		repeat
			read(c);
			if c <> ' ' then
				name := name + c;
		until c = ' ';

		repeat
			read(c);
			if c <> ' ' then
				surname := surname + c;
		until c = ' ';

		read(schoolnum);
		if schoolnum <> 30 then
		begin
			readln();
			continue;
		end;

		readln(mark);

		if mark = firstresult then
			winners := winners + 1
		else
			winners := 1;

		if mark = secondresult then
			secondwinners := 1
		else
			secondwinners := 0;

		if mark > firstresult then
		begin
			secondresult := firstresult;
			firstresult := mark;
			secondns := firstns;
			firstns := name + ' ' + surname;
		end;

		if ( mark > secondresult ) and ( mark < firstresult ) then
		begin
			secondresult := mark;
			secondns := name + ' ' + surname;
		end;
	end;
	if ( winners = 1 ) and ( secondwinners = 0 ) then
		writeln(firstns);
		writeln(secondns);

	if ( winners = 1 ) and ( secondwinners = 1 ) then
		writeln(firstns);

	if winners <> 1 then
		writeln(winners);
end.
