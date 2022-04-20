module testbench;
	reg x,y;
	wire a,b,c,d,e,f;
	rep1 uut (.x(x),   .y(y),   .a(a),   .b(b),   .c(c),   .d(d),   .e(e),   .f(f));
	initial 
		begin 
			$monitor("x=%b, y=%b,  OR=%b, NOR=%b, AND=%b, NAND=%b, XOR=%b, XNOR=%b",x,y,a,b,c,d,e,f);
			$dumpfile("rep1.vcd");
			$dumpvars(0,testbench);
			#5 x=0; y =0; 
			#5 x=0; y =1; 
			#5 x=1; y =0; 
			#5 x=1; y =1;
			#5 $finish;
	end
endmodule 
