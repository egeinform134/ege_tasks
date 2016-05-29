program decrypt;
var
    amount, i, j: integer;
    number: string;
    part: array[1..2] of string;
    k, sum, current_sum: integer;
begin
    readln(amount);
    sum := 0;
    for i := 1 to amount do
    begin
        readln(number);
        number := number + ' ';
        j := 0;
        while length(number) <> 0 do
        begin
            inc(j);
            if j = 3 then
                break;
            part[j] := copy(number, 1, pos(' ', number) - 1);
            delete(number, 1, pos(' ', number));
        end;
        current_sum := 0;

        if j = 3 then
            continue
        else
            for k := 1 to j do
            begin
                case part[k] of
                'один':
                    current_sum := current_sum + 1;
                'два':
                    current_sum := current_sum + 2;
                'три':
                    current_sum := current_sum + 3;
                'четыре':
                    current_sum := current_sum + 4;
                'пять':
                    current_sum := current_sum + 5;
                'шесть':
                    current_sum := current_sum + 6;
                'семь':
                    current_sum := current_sum + 7;
                'восемь':
                    current_sum := current_sum + 8;
                'девять':
                    current_sum := current_sum + 9;
                'одиннадцать':
                    current_sum := current_sum + 11;
                'двенадцать':
                    current_sum := current_sum + 12;
                'тринадцать':
                    current_sum := current_sum + 13;
                'четырнадцать':
                    current_sum := current_sum + 14;
                'пятнадцать':
                    current_sum := current_sum + 15;
                'шестнадцать':
                    current_sum := current_sum + 16;
                'семнадцать':
                    current_sum := current_sum + 17;
                'восемнадцать':
                    current_sum := current_sum + 18;
                'девятнадцать':
                    current_sum := current_sum + 19;
                'десять':
                    current_sum := current_sum + 10;
                'двадцать':
                    current_sum := current_sum + 20;
                'тридцать':
                    current_sum := current_sum + 30;
                'сорок':
                    current_sum := current_sum + 40;
                'пятьдесят':
                    current_sum := current_sum + 50;
                'шестьдесят':
                    current_sum := current_sum + 60;
                'семьдесят':
                    current_sum := current_sum + 70;
                'восемьдесят':
                    current_sum := current_sum + 80;
                'девяносто':
                    current_sum := current_sum + 90
                else
                    current_sum := 0;
                end;
            end;
            sum := sum + current_sum;
    end;
    writeln(sum);
end.
