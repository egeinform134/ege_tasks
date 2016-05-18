program ladder;
var
	i, floors, blocks, answer: integer;	

function crladder(x: integer): integer;
begin
	writeln('Функция вызвана для x = ', x);
	if x = 1 then
		crladder := 1
	else
	begin
		for i := 1 to x - 1 do
		begin
			floors := floors + crladder(i); 
		end;
		crladder := floors;
	end;
end;

begin
	readln(blocks);
	writeln('Блоков: ', blocks);
	floors := 0;
	answer := crladder(blocks);
	writeln('Ответ: ', answer);
end.
