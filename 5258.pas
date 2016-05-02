program fivetwofiveeight;
var
	amount, x, y, i, min_current, min_range, quarter_max, quarter_max_num: integer;
	quarter, min: array [1..4] of integer;
	min_point: array [1..4] of string;
	x_string, y_string, min_point_total: string;

function fun(n: integer; x, y: integer): integer;
begin
	quarter[n] := quarter[n] + 1;
	if abs(x) < abs(y) then
		min_current := abs(x)
	else
		min_current := abs(y);

	if (min[n] = -1) or (min_current < min[n]) then
	begin
		min[n] := min_current;
		str(x,x_string);
		str(y,y_string);
		min_point[n] := x_string + ' ' + y_string;
	end
end;

begin

	for i := 1 to 4 do
	begin
		min[i] := -1;
		quarter[i] := 0;
	end;

	readln(amount);
	for i := 1 to amount do
	begin
		readln(x, y);
				
		if ( x > 0 ) and ( y > 0 ) then
			fun(1, x, y);

		if ( x > 0 ) and ( y < 0 ) then
			fun(2, x, y);

		if ( x < 0 ) and ( y < 0 ) then
			fun(3, x, y);
			
		if ( x < 0 ) and ( y > 0 ) then
			fun(4, x, y);
	end;

	quarter_max := -1;

	for i := 1 to 4 do
	begin
		if (quarter[i] > quarter_max) or ((quarter[i] = quarter_max) and (min[i] < min[quarter_max_num])) then
		begin
			quarter_max_num := i;
			quarter_max := quarter[i];
			min_range := min[i];
			min_point_total := min_point[i];
		end;

	writeln('В четверти ', quarter_max_num, ' есть ', quarter_max, ' точек, минимальное расстояние ', min_range, ' у точки (', min_point_total, ')');

end.
