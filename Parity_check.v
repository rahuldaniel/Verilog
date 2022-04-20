module rep7(i,o);
	input [7:0]i;
	output reg o;
	integer c=0;
	integer u=0;
	always@(i) begin 
			c=0;
			for(u=0; u<=7; u=u+1)
			begin 
				if(i[u]==1)
				c=c+1;
			end
			if(c%2==0) begin
				o=1;
				$display("even parity correct");
			end
			else begin
				o=0;
				$display("even parity incorrect");
			end
	end
endmodule
