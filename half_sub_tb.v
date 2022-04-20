module testbench;
	reg a,b;
	wire x,y;
	rep4 uut (.a(a), .b(b), .x(x), .y(y));
	initial 
		begin
			$monitor("x=%b,y=%b,a=%b,b=%b", a,b,x,y);
			$dumpfile("half_sub.vcd");
			$dumpvars(0, testbench);
			#5 a=0; b =0; 
			#5 a=0; b =1; 
			#5 a=1; b =0; 
			#5 a=1; b =1;
			#5 $finish;
	end
endmodule

