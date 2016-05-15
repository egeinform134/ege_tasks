program line_1;
var
    N, M, i, k, tmp: integer;
    line: array [1..20] of integer;
function min(x, y: integer): integer;
begin
    if x < y then
        min := x
    else
        min := y;
end;
begin
    readln(N, M);

    for i := 1 to M do
        read(line[i]);

    for i := 2 to N do
        line[i] := line[i - 1] + line[i];

    for k := 2 to N do
    begin
        read(tmp);
        line[1] := line[1] + tmp;

        for i := 2 to M do
        begin
            read(tmp);
            line[i] := min(line[i-1], line[i]) + tmp;
        end;
    end;

    writeln(line[N]);
end.
