program ladder;
var
        blocks: longint;

function min(x, y: longint): longint;
begin
	if x < y then
		min := x
	else
		min := y;
end;

function crladder(x, previous: longint): longint;
var
        currentfloor, floors: longint;
begin
        floors := 0;

        if x > previous*(previous-1) div 2 then
            crladder := 0
        else
            if (x = 2) or (x = 1) or (x = 0) then
            begin
                    crladder := 1;
            end
            else
            begin
                    for currentfloor := min(previous - 1, x) downto 1 do
                    begin
                        floors := floors + crladder(x - currentfloor, currentfloor);
                    end;
                    crladder := floors;
            end;
end;


begin
        readln(blocks);
        writeln(crladder(blocks, blocks + 1));
end.
