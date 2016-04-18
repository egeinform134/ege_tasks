program manymax;
var
	c:char;
	name:string;
	amount,prize,i,j,l,mark:integer;
	k:array [1..20] of integer;
	k_name:array [1..20] of string;
begin
	readln(amount, prize);
	for i := 1 to prize do
	begin
		k[i] := 0;
		k_name[i] := '';
	end;

	for l := 1 to amount do
	begin
		readln(mark, c, name);
		for i := 1 to prize do
		begin
			if mark > k[i] then
			begin
				for j := prize downto (i + 1) do
				begin
					k[j] := k[j-1];
					k_name[j] := k_name[j-1];
				end;
				k[i] := mark;
				k_name[i] := name;
				break;
			end;
		end;
	end;
	for i := 1 to prize do
	begin
		writeln(k_name[i], ' (', k[i], ')');
	end;
end.
