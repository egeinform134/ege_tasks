program fivetwofiveeight;
var
	amount, x, y, i, min_current, min_range, quarter_max, quarter_max_num: integer;
	quarter, min: array [1..4] of integer;
	min_point: array [1..4] of string;
	x_string, y_string, min_point_total: string;
begin

	for i := 1 to 4 do
	begin
		min[i] := -1;
		quarter[i] := 0;
	end;

	readln(amount);
	for i := 1 to amount do
	begin
		readln(x,y);

		if ( x > 0 ) and ( y > 0 ) then
		begin
			quarter[1] := quarter[1] + 1;
			if abs(x) < abs(y) then
				min_current := abs(x)
			else 
				min_current := abs(y);
			if min[1] = -1 then
			begin
				min[1] := min_current;
				str(x,x_string);
				str(y,y_string);
				min_point[1] := x_string + ' ' + y_string;
			end
			else
				if min_current < min[1] then
				begin
					min[1] := min_current;
					str(x,x_string);
					str(y,y_string);
					min_point[1] := x_string + ' ' + y_string;
				end;
		end;

		if ( x > 0 ) and ( y < 0 ) then
		begin
			quarter[2] := quarter[2] + 1;
			if abs(x) < abs(y) then
				min_current := abs(x)
			else
				min_current := abs(y);
			if min[2] = -1 then
			begin
				min[2] := min_current;
				str(x,x_string);
				str(y,y_string);
				min_point[2] := x_string + ' ' + y_string;
			end
			else
				if min_current < min[2] then
				begin
					min[2] := min_current;
					str(x,x_string);
					str(y,y_string);
					min_point[2] := x_string + ' ' + y_string;
				end;
		end;

		if ( x < 0 ) and ( y < 0 ) then
		begin
			quarter[3] := quarter[3] + 1;
			if abs(x) < abs(y) then
				min_current := abs(x)
			else
				min_current := abs(y);
			if min[3] = -1 then
			begin
				min[3] := min_current;
				str(x,x_string);
				str(y,y_string);
				min_point[3] := x_string + ' ' + y_string;
			end
			else
				if min_current < min[3] then
				begin
					min[3] := min_current;
					str(x,x_string);
					str(y,y_string);
					min_point[3] := x_string + ' ' + y_string;
				end;
		end;

		if ( x < 0 ) and ( y > 0 ) then
		begin
			quarter[4] := quarter[4] + 1;
			if abs(x) < abs(y) then
				min_current := abs(x)
			else
				min_current := abs(y);
			if min[4] = -1 then
			begin
				min[4] := min_current;
				str(x,x_string);
				str(y,y_string);
				min_point[4] := x_string + ' ' + y_string;
			end
			else
				if min_current < min[4] then
				begin
					min[4] := min_current;
					str(x,x_string);
					str(y,y_string);
					min_point[4] := x_string + ' ' + y_string;
				end;
		end;
	end;

	quarter_max := -1;

	for i := 1 to 4 do
	begin
		if quarter[i] > quarter_max then
		begin
			quarter_max_num := i;
			quarter_max := quarter[i];
			min_range := min[i];
			min_point_total := min_point[i];
		end
		else
			if quarter[i] = quarter_max then
			begin
				if min[i] < min[quarter_max_num] then
				begin
					min_range := min[i];
					quarter_max := quarter[i];
					min_point_total := min_point[i];
					quarter_max_num := i;
				end;
			end;
	end;

	writeln('В четверти ', quarter_max_num, ' есть ', quarter_max, ' точек, минимальное расстояние ', min_range, ' у точки (', min_point_total, ')');

end.
