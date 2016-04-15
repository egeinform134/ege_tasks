program fourninefivenine;
var
	nickname,firstwinner,secondwinner,thirdwinner:string;
	amount,score,firstscore,secondscore,thirdscore,i:integer;
	c:char;
begin
	nickname := '';
	firstwinner := '';
	secondwinner := '';
	thirdwinner := '';
	firstscore := 0;
	secondscore := 0;
	thirdscore := 0;
	readln(amount);
	for i := 1 to amount do
	begin
		read(score);
		read(c);
		readln(nickname);
		if score > firstscore then
		begin
			thirdscore := secondscore;
			secondscore := firstscore;
			firstscore := score;
			thirdwinner := secondwinner;
			secondwinner := firstwinner;
			firstwinner := nickname;
		end
		else
		begin
			if score > secondscore then
			begin
				thirdscore := secondscore;
				secondscore := score;
				thirdwinner := secondwinner;
				secondwinner := nickname;
			end
			else
			begin
				if score > thirdscore then
				begin
					thirdscore := score;
					thirdwinner := nickname;
				end;
			end;
		end;
	end;
	writeln('Первое место: ', firstwinner, ' с ', firstscore);
	writeln('Второе место: ', secondwinner, ' с ', secondscore);
	writeln('Третье место: ', thirdwinner, ' с ', thirdscore);
end.
