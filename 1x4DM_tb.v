module testbench;
	reg i,x,y;
	wire a,b,c,d;
	rep10 uut(.i(i), .y(y), .x(x), .a(a), .b(b), .c(c), .d(d));
	initial 
		begin
			$monitor("i=%b, x=%b, y=%b, a=%b, b=%b, c=%b, d=%b", i,x,y,a,b,c,d);
			$dumpfile("1x4DM.vcd");
			$dumpvars(0,testbench);
			#5 i=1'b1; x=1'b0; y=1'b0; 
			#5 x=1'b0; y=1'b1;
			#5 x=1'b1; y=1'b0;
			#5 x=1'b1; y=1'b1;
			#5 $finish;
	end
endmodule
