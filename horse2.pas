program horse_1;
var
    N, M, i, j, k: integer;
    table: array [1..18, 1..18] of integer;
begin
    for i := 1 to 18 do
        for j := 1 to 18 do
            table[i, j] := 0;
    table[3, 3] := 1;

    readln(N, M);
    for k := 1 to N + M - 1 do
        for i := 3 to N + 2 do
        begin
            j := k - i + 5;
            if ( j >= 3 ) and ( j <= M + 2 ) then
                table[i, j] := table[i, j] + table[i + 1, j - 2] + table[i - 1, j - 2] + table[i - 2, j + 1] + table[i - 2, j - 1];
        end;
    writeln(table[N + 2, M + 2]);
end.
