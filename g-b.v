module rep12(i,o);
	input [3:0]i;
	output [3:0]o;
	assign o[3] = i[3];
	assign o[2] = o[3]&~i[2] | ~o[3]&i[2];
	assign o[1] = i[1]&~o[2] | ~i[1]&o[2];
	assign o[0] = i[0]&~o[1] | ~i[0]&o[1];
endmodule
