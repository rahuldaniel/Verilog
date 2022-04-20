 module testbench;
 	reg x,y;
 	wire a,b,c,d;
 	rep6 uut (.x(x), .y(y), .a(a), .b(b), .c(c), .d(d));
 	initial
 		begin
 			$monitor("x=%b, y=%b, a=%b, b=%b, c=%b, d=%b, ", x,y,a,b,c,d);
 			$dumpfile("2:4E.vcd");
 			$dumpvars(0,testbench);
 			#5 x=0; y=0;
 			#5 x=0; y=1;
 			#5 x=1; y=0;
 			#5 x=1; y=1;
 			#5 $finish;
 	end
 endmodule
