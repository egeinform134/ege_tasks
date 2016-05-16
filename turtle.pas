program turtle;
var
    table: array [1..100, 1..100] of integer;
begin
    readln(M, N);
    for i := 1 to M do
        for j := 1 to N do
            read(table[i, j]);

end.
