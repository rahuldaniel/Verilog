module testbench;
	reg [3:0]i;
	wire [3:0]o;
	rep11 uut(.i(i), .o(o));
	initial 
		begin
			$monitor("i=%b, o=%b", i,o);
			$dumpfile("b-g.vcd");
			$dumpvars(0,testbench);
			#5 i = 4'b1110;
			#5 i = 4'b1011;
			#5 i = 4'b1111;
			#5 i = 4'b0000;
			#5 i = 4'b1010;
			#5 i = 4'b0101;
			#5 $finish;
	end
endmodule
			
