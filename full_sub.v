module rep5(a,b,c,x,y);
	input a,b,c;
	output x,y;
	assign x = ~a&~b&c|a&~b&~c|a&b&c|~a&b&~c;
	assign y = b&c|~a&c|~a&b;
endmodule
