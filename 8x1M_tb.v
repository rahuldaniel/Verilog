module testbench;
	reg [7:0]i;
	reg [2:0]s;
	wire o;
	rep9 uut(   .i(i), .s(s), .o(o));
	initial
		begin
			$monitor(" i=%b, s=%b, o=%b",i,s,o);
			$dumpfile("8x1M.vcd");
			$dumpvars(0,testbench);
			#5 i = 8'b3a;
			 s = 3'h0;
			#5 s = 3'h1;
			#5 s = 3'h6;
			#5 s = 3'h3;
			#5 $finish;
	end
endmodule
