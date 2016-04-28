program onezerothreezerothree;
var
	a_max: array [1..4] of integer;
	b_max: array [1..4] of integer;
	catet: array [1..4] of extended;
	i, a, b, amount: integer;
	max_s: extended;
begin
	for i := 1 to 4 do
	begin
		a_max[i] := 0;
		b_max[i] := 0;
	end;

	readln(amount);

	for i := 1 to amount do
	begin
		readln(a,b);
		if abs(a) = abs(b) then
		begin
			if (a > 0) and (b > 0) and (a > a_max[1]) then
			begin
				a_max[1] := a;
				b_max[1] := b;
			end;
			if (a > 0) and (b < 0) and (a > a_max[2]) then
			begin
				a_max[2] := a;
				b_max[2] := b;
			end;
			if (a < 0) and (b < 0) and (a < a_max[3]) then
			begin
				a_max[3] := a;
				b_max[3] := b;
			end;
			if (a < 0) and (b > 0) and (a < a_max[4]) then
			begin
				a_max[4] := a;
				b_max[4] := b;
			end;
		end;
	end;

	for i := 1 to 4 do
		catet[i] := sqrt(a_max[i]*a_max[i] + b_max[i]*b_max[i]);

	max_s := 0;
	if catet[1] * catet[2] > max_s then
		max_s := catet[1] * catet[2];
	if catet[1] * catet[4] > max_s then
		max_s := catet[1] * catet[4];
	if catet[2] * catet[3] > max_s then
		max_s := catet[2] * catet[3];
	if catet[3] * catet[4] > max_s then
		max_s := catet[3] * catet[4];
	if max_s = 0 then
		writeln('Треугольник не существует')
	else
		writeln('Максимальная площадь: ',max_s/2);
end.
