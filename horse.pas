program horse_1;
var
    N, M, i, j: integer;
    table: array [1..52, 1..52] of integer;
begin
    readln(N, M);

    for j := 1 to 52 do
        table[1, j] := 0;
    for j := 1 to 52 do
        table[2, j] := 0;
    for i := 1 to 52 do
        table[i, 1] := 0;
    for i := 1 to 52 do
        table[i, 2] := 0;

    table[3, 3] := 1;

    for i := 3 to N + 2 do
        for j := 3 to M + 2 do
            table[i, j] := table[i-2, j-1] + table[i-1, j-2] + table[i, j];

    writeln(table[N+2, M+2]);
end.
