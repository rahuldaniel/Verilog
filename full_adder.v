module rep3(a,b,c,x,y);
	input a,b,c;
	output x,y;
	assign x =  ~a&~b&c|a&~b&~c|a&b&c|~a&b&~c;
	assign y = a&b|b&c|a&c;
endmodule
