program disearch;
const N = 50;
var
    i, j, t, shift, lf, left, right: integer;
    massive: array [1..N] of integer;
begin
    randomize();
    for i := 1 to N do
        massive[i] := random(100);

    for i := 1 to N do
        write(massive[i], ' ');
    writeln();

    for i := 2 to N do
        for j := i downto 2 do
            if (massive[j] < massive[j-1]) then
            begin
                t := massive[j];
                massive[j] := massive[j-1];
                massive[j-1] := t;
            end;

    shift := 0;

    for i := 2 to N do
    begin
        massive[i] := massive[i] + shift;
        if massive[i] = massive[i-1] then
        begin
            shift := shift + 1;
            massive[i] := massive[i] + 1;
        end;
    end;

    for i := 1 to N do
        write(massive[i], ' ');
    writeln();

    readln(lf);

    left := 1;
    right := N;

    if (massive[left] = lf) then
        writeln('НАШЁЛ: ', left);

    if (massive[right] = lf) then
        writeln('НАШЁЛ: ', right);

    while right-left > 1 do
    begin
        if massive[(left+right) div 2] = lf then
        begin
            writeln('НАШЁЛ: ', (left+right) div 2);
            break;
        end;

        if massive[(left+right) div 2] > lf then
            right := (left+right) div 2
        else
            left := (left+right) div 2;
    end;
end.
