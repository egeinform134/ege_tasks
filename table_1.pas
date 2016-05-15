program table_1;
var
    N, M, i, j: integer;
    table: array [1..20, 1..20] of integer;
function min(x, y: integer): integer;
begin
    if x < y then
        min := x
    else
        min := y;
end;
begin
    readln(N, M);
    for i := 1 to N do
        for j := 1 to M do
            read(table[i, j]);

    for i := 1 to N do
    begin
        for j := 1 to M do
            write(table[i, j]: 4);
        writeln();
    end;

    for j := 2 to N do
        table[1, j] := table[1, j - 1] + table[1, j];

    for i := 2 to M do
        table[i, 1] := table[i - 1, 1] + table[i, 1];

    for i := 2 to N do
        for j := 2 to M do
            table[i, j] := min(table[i - 1, j], table[i, j - 1]) + table[i, j];

    for i := 1 to N do
    begin
        for j := 1 to M do
            write(table[i, j]: 4);
        writeln();
    end;
    writeln(table[N, M]: 4);
end.
