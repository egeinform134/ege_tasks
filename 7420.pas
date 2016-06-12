program sevenfourtwozero;
var
    i, j, willing, tables: integer;
    name: string;
    come, go: string[5];
    c: char;
    freed: array [1..1001] of string;

begin
    readln(willing, tables);

    for i := 1 to tables do
        freed[i] := '00.00';

    for i := 1 to willing do
    begin
        name := '';
        
        repeat
            read(c);
            if c <> ' ' then
                name := name + c;
        until c = ' ';

        readln(come, c, go);

        for j := 1 to tables do
            if (come >= freed[j]) then
            begin
                freed[j] := go;
                writeln(name, ' займёт ', j);
                break;
            end;
    end;
end.
