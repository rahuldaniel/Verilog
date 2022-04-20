module testbench;
	reg[7:0] a,b;
	reg [2:0] s;
	wire [7:0]r ;
	alv uut(.a(a), .b(b), .s(s), .r(r));
	initial 
		begin 
			$monitor(" s=%s, a=%b,  b=%b, r=%b",s,a,b,r);
			$dumpfile("alu.vcd");
			$dumpvars(0,testbench);
			#5 s=3'b000; a=8'b00110011; b=8'b11001100;
			#5 s=3'b001; a=8'b00110011; b=8'b11001100;
			#5 s=3'b010; a=8'b00110011; b=8'b11001100;
			#5 s=3'b011; a=8'b00110011; b=8'b11001100;
			#5 s=3'b100; a=8'b00110011; b=8'b11001100;
			#5 s=3'b101; a=8'b00110011; b=8'b11001100;
			#5 s=3'b110; a=8'b00110011; b=8'b11001100;
			#5 s=3'b111; a=8'b00110011; b=8'b11001100;
			#5 $finish;
	end
endmodule
