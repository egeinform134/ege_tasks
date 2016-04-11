program egr;
type
	result = record
		res: integer;
		count: integer;
		name: string;
	end;
var
	amount, sum, i: integer;
    name, surname: string;
    c: char;
    mark: array[1..3] of integer;
    fails: array[1..3] of result;
begin
    readln(amount);
	
	fails[1].res := 16;
	fails[2].res := 16;
	fails[3].res := 16;
	
    for i := 1 to amount do
    begin
        name    := '';
        surname := '';

        repeat
            read(c);
            name := name + c;
        until c = ' ';
        delete(name, length(name), 1);

        repeat
            read(c);
            surname := surname + c;
        until c = ' ';
        delete(surname, length(surname), 1);

        readln(mark[1], mark[2], mark[3]);
		sum := mark[1] + mark[2] + mark[3];

		if (sum = fails[3].res) then
		begin
			fails[3].count := fails[3].count + 1;
			fails[3].name := fails[3].name + ' ' + surname + ' ' + name + ';';
		end;
		if (sum < fails[3].res) and (sum > fails[2].res) then
		begin
			fails[3].res := sum;
			fails[3].count := 1;
			fails[3].name := surname + ' ' + name + ';';
		end;
		if (sum = fails[2].res) then
		begin
			fails[2].count := fails[2].count + 1;
			fails[2].name := fails[2].name + ' ' + surname + ' ' + name + ';';
		end;
		if (sum > fails[1].res) and (sum < fails[2].res) then
		begin
			fails[3] := fails[2];

			fails[2].res := sum;
			fails[2].count := 1;
			fails[2].name := surname + ' ' + name + ';';
		end;
		if (sum = fails[1].res) then
		begin
			fails[1].count := fails[1].count + 1;
			fails[1].name := fails[1].name + ' ' + surname + ' ' + name + ';';
		end;
		if (sum < fails[1].res) then
		begin
			fails[3] := fails[2];
			fails[2] := fails[1];

			fails[1].res := sum;
			fails[1].count := 1;
			fails[1].name := surname + ' ' + name + ';';
		end; 
    end;
	sum:=0;
	i:=1;
	repeat
		sum := sum + fails[i].count;
		writeln(fails[i].name);
		i := i + 1;
	until sum >= 3;
end.