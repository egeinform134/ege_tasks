program v8_27;
var
	max_consequent,consequent,current,amount,new,i:integer;
begin
	consequent := 1;
	max_consequent := 1;
	readln(amount);
	readln(current);
	for i := 1 to amount - 1 do
	begin
		readln(new);
		if new >= current then
		begin
			current := new;
			consequent := consequent + 1;
		end
		else
		begin
			current := new;
			if consequent >= max_consequent then
				max_consequent := consequent;
			consequent := 1;
		end;
	end;
	if consequent >= max_consequent then
		writeln(consequent)
	else
		writeln(max_consequent);
end.
