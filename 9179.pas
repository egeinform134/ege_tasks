program nineonesevennine;
var
    i, amount: integer;
    numbers: array[1..10] of integer;
    maxtail, maxsum: real;
begin
    readln(amount);

    for i := 1 to 10 do
        readln(numbers[i]);
    
    maxtail := numbers[1];
    maxsum := (numbers[10] + maxtail) / 2;
    
    for i := 11 to amount do
    begin
        readln(numbers[i mod 10]);
        if numbers[i mod 10 + 1] > maxtail then
            maxtail := numbers[i mod 10 + 1];

        if (numbers[i mod 10] + maxtail) / 2 > maxsum then
            maxsum := (numbers[i mod 10] + maxtail) / 2;
    end;

    writeln(maxsum);
end.
