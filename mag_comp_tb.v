module testbench;
	reg [1:0]a,b;
	wire [2:0]x;
	rep13 uut(.a(a), .b(b), .x(x));
	initial
		begin
			$monitor("a=%b, b=%b x=%b", a,b,x);
			$dumpfile("13rep.vcd");
			$dumpvars(0,testbench);
			#5 a = 2'b11; b = 2'b00;
			#5 a = 2'b11; b = 2'b01;
			#5 a = 2'b10; b = 2'b01;
			#5 a = 2'b11; b = 2'b11;
			#5 a = 2'b00; b = 2'b00;
			#5 a = 2'b00; b = 2'b10;
			#5 a = 2'b01; b = 2'b10;
			#5 a = 2'b00; b = 2'b11;
			#5 $finish;
	end
endmodule
