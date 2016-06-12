program sevenfourtwozero;
var
    i, j, willing, tables, forval, illtake: integer;
    come, go: real;
    name: string;
    c: char;
    taken: array [1..1001] of real;
    freed: array [1..1001] of real;

function strtoint (n: char): integer;
begin
    case n of
        '1': strtoint := 1;
        '2': strtoint := 2;
        '3': strtoint := 3;
        '4': strtoint := 4;
        '5': strtoint := 5;
        '6': strtoint := 6;
        '7': strtoint := 7;
        '8': strtoint := 8;
        '9': strtoint := 9;
        '0': strtoint := 0;
    end;
end;

begin
    readln(willing, tables);

    for i := 1 to 1001 do
    begin
     taken[i] := 24.01;
     freed[i] := -00.01;
    end;

    for i := 1 to willing do
    begin
        name := '';
        
        repeat
            read(c);
            if c <> ' ' then
                name := name + c;
        until c = ' ';

        read(c);
        come := strtoint(c) * 10;
        read(c);
        come := come + strtoint(c);

        read(c);
        
        read(c);
        come := come + strtoint(c) / 10;
        read(c);
        come := come + strtoint(c) / 100;

        read(c);
        
        read(c);
        go := strtoint(c) * 10;
        read(c);
        go := go + strtoint(c);

        read(c);
        
        read(c);
        go := go + strtoint(c) / 10;
        read(c);
        go := go + strtoint(c) / 100;

        read(c);

        illtake := 0;

        for j := 1 to tables do
            if (taken[j] > go) or (freed[j] < come) then
            begin
                taken[j] := come;
                freed[j] := go;
                illtake := j;
                break;
            end;

        if illtake <> 0 then
            writeln(name, ' займёт ', illtake);
    end;
end.
