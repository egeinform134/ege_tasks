program seventhreeeightfive;
var
    second_max_mark, max_mark, cand_winners, second_winners, amount, spaces, mark, i: integer;
    name, top_winner, second_winner: string;
    c: char;
begin
    readln(amount);
    max_mark := -1;
    second_max_mark := -1;
    cand_winners := 0;
    second_winners := 0;

    for i := 1 to amount do
    begin
        name := '';
        spaces := 0;
        repeat
            read(c);
            if c <> ' ' then
                name := name + c
            else
            begin
                if spaces = 0 then
                    name := name + c;
                inc(spaces);
            end;
        until spaces = 2;
        
        repeat
            read(c);
        until c = ' ';
        
        readln(mark);

        if mark = max_mark then
            inc(cand_winners);
        
        if mark > max_mark then
        begin
            top_winner := name;
            max_mark := mark;
            cand_winners := 1;
        end;

        if mark < max_mark then
        begin
            if mark = second_max_mark then
                inc(second_winners);
            
            if mark > second_max_mark then
            begin
                second_max_mark := mark;
                second_winner := name;
                second_winners := 1;
            end;
        end;
    end;

    writeln('Максимальная оценка: ', max_mark);
    writeln('Кандидатов в победители: ', cand_winners);
    writeln('Вторая максимальная: ', second_max_mark);
    writeln('Вторых победителей: ', second_winners);

    if (cand_winners <= amount / 4) or ((cand_winners > amount / 4) and (max_mark > 300)) then
        if second_winners = 1 then
            writeln(second_winner)
        else
            writeln(second_winners);
    else
        if cand_winners = 1 then
            writeln(top_winner)
        else
            writeln(cand_winners);
end.
