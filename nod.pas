program nod;
var
	a, b: integer;
begin
	readln(a, b);
	while a * b <> 0 do
	begin
		if a > b then
			a := a mod b
		else
			b := b mod a
	end;
	writeln(a + b);
end.

{
program nod2;
var
	a, b: integer;
	
	function nod(a, b: integer): integer;
	var
	t: integer;
	begin
		if b = 0 then
			t := a
		else
			t := nod(b, a mod b);
			nod := t;
	end;
begin
	readln(a, b);
	writeln(nod(a, b));
end.
}