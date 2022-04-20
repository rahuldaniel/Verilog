module testbench;
	reg a,b,c;
	wire x,y;
	rep3 uut(.a(a), .b(b), .c(c), .x(x), .y(y));
	initial 
		begin 
			$monitor("a=%b, b=%b, c=%b, x=%b, y=%b", a,b,c,x,y);
			$dumpfile("full_adder.vcd");
			$dumpvars(0,testbench);
			#5 a=0; b =0; c=0;
			#5 a=0; b =0; c=1;
			#5 a=0; b =1; c=0;
			#5 a=0; b =1; c=1;
			#5 a=1; b =0; c=0;
			#5 a=1; b =0; c=1;
			#5 a=1; b =1; c=0;
			#5 a=1; b =1; c=1;
			#5 $finish;
	end
endmodule
