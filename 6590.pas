program sixfiveninezero;
var
    i, j, t, pair, amount: integer;
    votes, pairs: array [1..10] of integer;
begin
    for i := 1 to 10 do
    begin
        votes[i] := 0;
        pairs[i] := i;
    end;

    readln(amount);
    for i := 1 to amount do
    begin
        read(pair);
        inc(votes[pair]);
    end;

    for i := 1 to 10 do
        if votes[i] <> 0 then
            writeln('За пару ', i, ' ', votes[i], ' голосов');

    for i := 2 to 10 do
        for j := i downto 2 do
            if (votes[j] < votes[j-1]) then
            begin
                t := votes[j];
                votes[j] := votes[j-1];
                votes[j-1] := t;

                t := pairs[j];
                pairs[j] := pairs[j-1];
                pairs[j-1] := t;
            end;

    for i := 1 to 10 do
        if votes[i] <> 0 then
            writeln(pairs[i], ' ', votes[i]);
end.
