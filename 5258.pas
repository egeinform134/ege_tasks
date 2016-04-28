program fivetwofiveeight;
var
	
begin
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
				min[1] := min_current
			else
				if min_current < min[1] then
					min[1] := min_current;
		end;

		if ( x > 0 ) and ( y < 0 ) then
		begin
			quarter[2] := quarter[2] + 1;
			if abs(x) < abs(y) then
				min_current := abs(x)
			else
				min_current := abs(y);
			if min[2] = -1 then
				min[2] := min_current
			else
				if min_current < min[2] then
					min[2] := min_current;
		end;

		if ( x < 0 ) and ( y < 0 ) then
		begin
			quarter[3] := quarter[3] + 1;
			if abs(x) < abs(y) then
				min_current := abs(x)
			else
				min_current := abs(y);
			if min[3] := -1 then
				min[3] := min_current
			else
				if min_current < min[3] then
					min[3] := min_current;
		end;

		if ( x < 0 ) and ( y > 0 ) then
		begin
			quarter[4] := quarter[4] + 1;
			if abs(x) < abs(y) then
				min_current := abs(x)
			else
				min_current := abs(y);
			if min[4] := -1 then
				min[4] := min_current;
			else
				if min_current < min[4] then
					min[4] := min_current;
		end;
	end;
	for i := 1 to 4 do
		if quarter[i] > quarter_max then
		begin
			quarter_max := quarter[i];
			min_range := min[i];
		end
		else
			if quarter[i] = quarter_max then
			begin
				if quarter
			end

end.
