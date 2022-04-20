module rep13(a,b,x);
	input [1:0]a,b;
	output [2:0]x;
	assign x[2] = (~a[1] & ~a[0] & b[0] | ~a[1] & b[0] & b[0] | ~a[1] & b[1]);
	assign x[1] = (~(a[1] & ~b[1] | ~a[1] & b[1] ) & ~(a[0] & ~b[0] | ~a[0] & b[1]));
	assign x[0] = a[0] & ~b[1] & ~b[0] | a[1] & a[0] & ~b[0] | a[1] & ~b[1];
endmodule
