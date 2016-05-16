program prisoner;
var
    table: array [1..10, 1..10] of integer;
    i, j, M, N: integer;
begin
    readln(N, M);
    for i := 1 to N do
        for j := 1 to M do
            read(table[i, j]);

    table[1, 1] := 1;
    for j := 2 to M do
        table[1, j] := table[1, j] * table[1, j - 1];

    for i := 2 to N do
        table[i, 1] := table[i, 1] * table[i - 1, 1];

    for i := 2 to N do
        for j := 2 to M do
            table[i, j] := table[i, j] * (table[i - 1, j] + table[i, j - 1]);

    writeln(table[N, M]);
end.
