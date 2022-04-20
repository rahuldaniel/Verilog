module rep2(a,b,x,y);
	input a,b;
	output x,y;
	assign x = (a&~b)|(~a&b);
	assign y = a&b;
endmodule
