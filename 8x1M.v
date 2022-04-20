module rep9(i,s,o,);
	input [7:0]i;
	input [2:0]s;
	output o;
	assign o=i[s];
endmodule
	
