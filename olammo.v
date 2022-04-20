module ola(i,s,o);
	input [3:0]i;
	input [1:0]s;
	output o;
	wire [1:0]t;
	assign o=i[s];
	rep g(i[1:0], s[0], t[0]);
	rep h(i[3:2], s[0], t[1]);
	rep j(t,s[1],o);
endmodule


module rep(i,s,o);
	input [1:0]i;
	input s;
	output o;
	assign o = i[s];
endmodule 
