program threesixfourtwo;
var
	letters, lengt, shortest, i: integer;
	spell: array [1..200] of char;
	c:char;
begin
	letters := 0;

	(* Непонятный % в выводе в строке 25 *)

	while true do
	begin
		read(c);
		if c <> '.' then
		begin
			letters := letters + 1;
			spell[letters] := c;
		end
		else
			break;
	end;

	writeln(letters, ' букв');
	for i := 1 to letters do
		write(spell[i]);
	
	shortest := 201;
	lengt := 0;
	
	(* Неожиданный вывод в строке 44 для входных данных, где кратчайшее слово в конце.
	Может быть связано с предыдущей проблемой *)

	for i := 1 to letters do 
		if spell[i] <> ' ' then
			lengt := lengt + 1
		else
			if lengt < shortest then
			begin
				shortest := lengt;
				lengt := 0;
			end;

	writeln();
	writeln(shortest);

	(* Поставить в соответствие каждой букве латинского алфавита
	число, хранить в массиве заклинание в виде чисел, вычесть из них shortest
	и вывести числа в виде букв?*)

	for i := 1 to letters do
	begin

	end;
end.
