program sixfiveninezero;
var
    i, j, t, pair, amount: integer;
    votes, order: array [1..10] of integer;
begin
    for i := 1 to 10 do
    begin
        votes[i] := 0;
        order[i] := i;
    end;

    readln(amount);
    for i := 1 to amount do
    begin
        readln(pair);
        inc(votes[pair]);
    end;

    for i := 1 to 10 do
        if votes[i] <> 0 then
            writeln('За пару ', i, ' ', votes[i], ' голосов');
    
    for i := 2 to 10 do
        for j := i downto 2 do
            if (votes[j] < votes[j-1]) and (votes[j] <> 0) then
            begin
                t := order[j];
                order[j] := order[j-1];
                order[j-1] := t
            end;

    for i := 1 to 10 do
        if votes[order[i]] <> 0 then
            writeln('За пару ', order[i], ' ', votes[order[i]], ' голосов');
end.
