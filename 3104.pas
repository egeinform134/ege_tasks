program egr;
var
    amount, couples, i, j: integer;
    name, surname: string;
    c: char;
    mark: array[1..3] of integer;
    fails: array[1..3] of string;
begin
    readln(amount);
    for i := 1 to amount do
    begin
        name    := '';
        surname := '';

        repeat
            read(c);
            name := name + c;
        until c = ' ';
        delete(name, length(name), 1);

        repeat
            read(c);
            surname := surname + c;
        until c = ' ';
        delete(surname, length(surname), 1);

        readln(mark[1], mark[2], mark[3]);

        couples := 0;
        for j := 1 to 3 do
            if mark[j] = 2 then
                couples := couples + 1;

        if couples > 0 then
            fails[couples] := fails[couples] + surname + ' ' + name + '; ';
    end;
    for j := 3 downto 1 do
        writeln(fails[j]);
end.