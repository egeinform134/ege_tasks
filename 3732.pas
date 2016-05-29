program gas;
var
	amo_min_92, amo_min_95, amo_min_98, min_cost_92, min_cost_95, min_cost_98, i, mark, cost, amount, chars: integer;
	c: char;	
begin
	readln(amount);
	min_cost_92 := 3001;
	min_cost_95 := 3001;
	min_cost_98 := 3001;
	for i := 1 to amount do
	begin
		chars := 0;
		repeat
			read(c);
			if c = ' ' then
				chars := chars + 1;
		until chars = 2;
		read(mark, cost);

		if mark = 92 then
			if cost < min_cost_92 then
			begin
				min_cost_92 := cost;
				amo_min_92 := 1;
			end
			else
			if cost = min_cost_92 then
				amo_min_92 := amo_min_92 + 1;

		if mark = 95 then
			if cost < min_cost_95 then
			begin
				min_cost_95 := cost;
				amo_min_95 := 1;
			end
			else
			if cost = min_cost_95 then
				amo_min_95 := amo_min_95 + 1;
	
		if mark = 98 then
			if cost < min_cost_98 then
			begin
				min_cost_98 := cost;
				amo_min_98 := 1;
			end
			else
			if cost = min_cost_98 then
				amo_min_98 := amo_min_98 + 1;
	end;
	writeln(amo_min_92);
	writeln(amo_min_95);
	writeln(amo_min_98);
end.
