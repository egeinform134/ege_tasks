program fj;
var
	amount, cross, road_right, road_left, right, left, i: integer;
begin
	readln(amount);
	readln(cross);
	road_left := 0;
	road_right := cross;
	
	for i := 1 to amount do
	begin
		readln(left, right);
		road_left := road_left + left;
		if road_left + cross > road_right + right then
			road_right := road_right + right
		else
			road_right := road_left + cross;
	end;
	writeln(road_right);
end.
