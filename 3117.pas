program threeoneoneseven;
var
    i, count, spaces, number, mark, maxschool, maxscore, withmaxscore: integer;
    c: char;
    score, amount: array [1..99] of integer;
begin
    readln(count);

    for i := 1 to 99 do
    begin
        score[i] := 0;
        amount[i] := 0;
    end;

    for i := 1 to count do
    begin
        spaces := 0;
        repeat
            read(c);
            if c = ' ' then
                spaces := spaces + 1;
        until spaces = 2;

        read(number);
        readln(mark);

        score[number] := score[number] + mark;
        inc(amount[number]);
    end;

    maxscore := 0;
    maxschool := 0;
    withmaxscore := 1;

    for i := 1 to 99 do
    if score[i] <> 0 then
    begin
        if round(score[i] / amount[i]) = maxscore then
            inc(withmaxscore);

        if round(score[i] / amount[i]) > maxscore then
        begin
            maxscore := round(score[i] / amount[i]);
            withmaxscore := 1;
            maxschool := i;
        end;
    end;
    if withmaxscore <> 0 then
        writeln(withmaxscore)
    else
        writeln(maxschool, ': ', maxscore);
end.
