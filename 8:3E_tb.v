module testbench;
	reg [7:0]i;
	wire [2:0]o;
	rep7 uut(.i(i), .o(o));
	initial 
		begin 
			$monitor(" i=%b, o=%b",i,o);
			$dumpfile("8:3E.vcd");
			$dumpvars(0,testbench);
			#50 i=8'b10000000;
			#50 i=8'b01000000;
			#50 i=8'b00000010;
			#50 i=8'b00000001;
			#50 $finish;
	end
endmodule
			
