program ninetwooneone;
var
	remain_one,remain_two,first_div,second_div,number,amount,i, sum: integer;
begin
	readln(amount);
	
	remain_one := 0;
	remain_two := 0;
	first_div := 0;
	second_div := 0;
	sum := 0;
	
	for i := 1 to amount do
	begin
		readln(number);
		if number mod 3 = 0 then
		begin
			if number >= first_div then
			begin
				second_div := first_div;
				first_div := number;
			end;
			if (number < first_div) and (number >= second_div) then
				second_div := number;
		end;
		if (number mod 3 = 1) and (number > remain_one) then
				remain_one := number;
		if (number mod 3 = 2) and (number > remain_two) then
				remain_two := number;
	end;

	if (first_div <> 0) and (second_div <> 0) then
		sum := first_div + second_div;
	if (remain_one <> 0) and (remain_two <> 0) and (remain_one + remain_two > sum) then
		sum := remain_one + remain_two;
	if (sum = 0)
		then sum := 1;
	writeln(sum);
end.