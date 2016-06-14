program nineonesevennine;
var
    i, amount: integer;
    numbers: array[1..10] of integer;
    mintail, minsum: real;
begin
    readln(amount);

    for i := 1 to 10 do
        readln(numbers[i]);
    
    mintail := numbers[1];
    minsum := (numbers[10] + mintail) / 2;
    
    for i := 11 to amount do
    begin
        readln(numbers[i mod 10]);
        if numbers[i mod 10 + 1] < mintail then
            mintail := numbers[i mod 10 + 1];

        if (numbers[i mod 10] + mintail) / 2 < minsum then
            minsum := (numbers[i mod 10] + mintail) / 2;
    end;

    writeln(minsum:5:2);
end.
