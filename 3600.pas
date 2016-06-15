program threesixzerozero;
var
    i, spaces, amount, number, mark: integer;
    bestname: array [1..2] of string;
    best, bestmark: array [1..2] of integer;
    name: string;
    c: char;
begin
    readln(amount);
    
    bestmark[1] := -1;
    bestmark[2] := -1;
    bestname[1] := '';
    bestname[2] := '';
    best[1] := 1;
    best[2] := 1;

    for i := 1 to amount do
    begin
        name := '';
        spaces := 0;

        repeat
            read(c);
            if c = ' ' then
                spaces := spaces + 1;
            if (c <> ' ') or (spaces < 2) then
                name := name + c;
        until spaces = 2;

        read(number);
        readln(mark);

        writeln('Ф.И.: ', name, ', номер школы: ', number, ', балл: ', mark);

        if number <> 50 then
            continue;

        if mark = bestmark[1] then
        begin
            writeln('Оценка ', mark, ' равна максимальной ', bestmark[1]);
            best[1] := best[1] + 1;
        end;

        if mark > bestmark[1] then
        begin
            writeln('Оценка ', mark, ' больше максимальной ', bestmark[1]);
            bestmark[2] := bestmark[1];
            bestmark[1] := mark;
            bestname[2] := bestname[1];
            bestname[1] := name;
            best[1] := 1;
            best[2] := 1;
        end;

        if (mark < bestmark[1]) and (mark = bestmark[2]) then
        begin
            writeln('Оценка ', mark, ' меньше максимальной ', bestmark[1], ', но равна второй максимальной ', bestmark[2]);
            best[2] := best[2] + 1;
        end;

        if (mark < bestmark[1]) and (mark > bestmark[2]) then
        begin
            writeln('Оценка ', mark, ' меньше максимальной ', bestmark[1], ', но больше второй максимальной ', bestmark[2]);
            bestmark[2] := mark;
            bestname[2] := name;
            best[2] := 1;
        end;
    end;

    if (best[1] = 1) and (best[2] = 1) then
    begin
        writeln(bestname[1]);
        writeln(bestname[2]);
    end;

    if (best[1] = 1) and (best[2] > 1) then
        writeln(bestname[1]);

    if (best[1] > 1) then
        writeln(best[1]);
end.
