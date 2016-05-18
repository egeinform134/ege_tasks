program ladder;
var
	i, floors, blocks, answer: integer;	

function crladder(x: integer): integer;
begin
	writeln('Функция вызвана для x = ', x);
	if x = 1 then
	begin
		crladder := 1;
		writeln('x = 1, crladder = 1');
	end
	else
	begin
		for i := x - 1 downto 1 do
		begin
			writeln('i = ', i);
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
