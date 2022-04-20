module testbench;
	reg s,r,clk;
	wire q,qb;
	srff uut(.r(r), .s(s), .clk(clk), .q(q), .qb(qb));
	initial
		begin 
			$monitor("s=%b, r=%b, clk=%b, q=%b, qb=%b", s,r,clk,q,qb);
			$dumpfile("srff.vcd");
			$dumpvars(0,testbench);
			s=0;r=0;clk=0;
			#100 s=0; r=1;
			#100 s=1; r=0;
			#100 s=1; r=1;
			#100 s=0; r=1;
	end
	always #50 clk = ~clk;
endmodule
