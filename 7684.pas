program sevensixeightfour;
var
    max_odd,max_even,current,amount,incontrol,i:integer;
begin
	max_odd:=0;
	max_even:=0;
	current:=0;
	amount:=0;
	i:=0;
	incontrol:=0;
	readln(amount);
	for i := 1 to amount do
	begin
		readln(current);
		if (current mod 2 = 0) and (current > max_even) then
            max_even := current
        if (current mod 2 = 1) and (current > max_odd) then
            max_odd := current;
	end;
	readln(incontrol);
	writeln('Вычисленное контрольное значение: ', max_odd + max_even);
	if incontrol = max_odd + max_even then
		writeln('Контроль пройден')
	else
		writeln('Контроль не пройден')
end.
