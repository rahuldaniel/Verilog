module testbench;
	reg [7:0]i;
	rep7 uut (.i(i));
		initial begin
				$monitor("i=%b", i);
				#5 i=8'b01010011;
				#5 i=8'b01011010;
				#5 i=8'b01010010;
				#5 $finish;
		end
endmodule
