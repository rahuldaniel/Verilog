module testbench;
	reg [3:0]i;
	reg [1:0]s;
	wire o;
	ola uut(   .i(i), .s(s), .o(o));
	initial
		begin
			$monitor(" i=%b, s=%b, o=%b",i,s,o);
			$dumpfile("4x1M.vcd");
			$dumpvars(0,testbench);
			#5 i = 4'h9; s = 2'h0;
			#5 s = 2'h1;
			#5 s = 2'h2;
			#5 s = 2'h3;
			#5 $finish;
	end
endmodule
