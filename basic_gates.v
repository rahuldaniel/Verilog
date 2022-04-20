module rep1(x,y,a,b,c,d,e,f);
	input x,y;
	output a,b,c,d,e,f;
	assign a =  x | y;
	assign b = 	~a;
	assign c =  x & y;
	assign d =  ~c;
	assign e = (x&~y)|(~x&y);
	assign f = ~e;
endmodule
