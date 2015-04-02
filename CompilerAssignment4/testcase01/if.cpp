//prints 500
program{
	int a;
	int b;
	int c;
	int d;
	a = 10;
	b = 12;
	c = 14;
	d = 16;

	if( (a+b) / 15  +100 *(b+ d + a) / 5 > c * - 10 / a + b) then
		if( a > b) then	
			if( c > d) then
				put(100);
			else
				if(c == a) then
					put(200);
				else
					put(300);
				;
			;
		else
			if (d < 100) then
				if(c* 10 / a == 10) then
					put(400);
				else
					put(500);
				;
			else
				put(600);
			;
		;
	else
		if (d > 100) then
			if(c* 10 / a == 10) then
				put(700);
			else
				put(800);
			;
		else
			put(900);
		;
	;

};