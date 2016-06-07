program threeoneoneeight;
var
    amount, chars, i: integer;
    name: string;
    midmark: real;
    c: char;
    mark: array [1..3] of integer;
    
    worst_midmark: array [1..3] of real;
    worst_id: array [1..3] of integer;

    student: array [1..100] of string;
    student_mark: array [1..100] of real;
begin
    readln(amount);
    
    worst_midmark[1] := 6;
    worst_midmark[2] := 7;
    worst_midmark[3] := 8;

    for i := 1 to amount do
    begin
        chars := 0;
        name := '';
        repeat
            read(c);
            if c <> ' ' then
                name := name + c
            else
            begin
                if chars = 0 then
                    name := name + c;
                inc(chars);
            end;
        until chars = 2;

        readln(mark[1], mark[2], mark[3]);
        midmark := (mark[1] + mark[2] + mark[3]) / 3;
        

        student[i] := name;
        student_mark[i] := midmark;

        if midmark <= worst_midmark[1] then
        begin
            worst_midmark[3] := worst_midmark[2];
            worst_midmark[2] := worst_midmark[1];
            worst_midmark[1] := midmark;
            worst_id[3] := worst_id[2];
            worst_id[2] := worst_id[1];
            worst_id[1] := i
        end;

        if (midmark > worst_midmark[1]) and (midmark <= worst_midmark[2]) then
        begin
            worst_midmark[3] := worst_midmark[2];
            worst_midmark[2] := midmark;
            worst_id[3] := worst_id[2];
            worst_id[2] := i;
        end;

        if (midmark > worst_midmark[2]) and (midmark <= worst_midmark[3]) then
        begin
            worst_midmark[3] := midmark;
            worst_id[3] := i;
        end;
    end;

    for i := 1 to amount do
        if (student_mark[i] = worst_midmark[1]) or (student_mark[i] = worst_midmark[2]) or (student_mark[i] = worst_midmark[3]) then
            writeln(student[i]);
end.
