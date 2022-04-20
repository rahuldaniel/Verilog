module rep10(i,x,y,a,b,c,d);
	input i,x,y;
	output a,b,c,d;
	assign a =  i&~x&~y;
	assign b =  i&~x&y;
	assign c =  i&x&~y;
	assign d =  i&x&y;
endmodule
