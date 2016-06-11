program sevenfourtwozero;
var
    i, j, willing, tables, forval, illtake: integer;
    come, go: real;
    name, come_string, go_string: string;
    c: char;
    taken: array [1..1001] of real;
    freed: array [1..1001] of real;
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
        go_string := '';
        come_string := '';
        
        repeat
            read(c);
            if c <> ' ' then
                name := name + c;
        until c = ' ';

        j := 0;

        repeat
            read(c);
            j := j + 1;
            if c <> ':' then
                come_string := come_string + c
            else
                come_string := come_string + '.';
        until j = 5;
       
        read(c);

        j := 0;

        repeat
            read(c);
            j := j + 1;
            if c <> ':' then
                go_string := go_string + c
            else
                go_string := go_string + '.';
        until j = 4;

        readln(c);
        go_string := go_string + c;

        val(go_string, go, forval);
        val(come_string, come, forval);

        // А вот так всё работает

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
