module testbench();
	reg r,s,clk;
	wire q,qb;
	srff1 uut(.s(s), .r(r), .q(q), .qb(qb), .clk(clk) );
	initial
		begin
			clk =0;
			forever #5 clk=~clk;
		end
	initial
		begin
			$monitor("s=%b, r=%b, clk=%b, q=%b, qb=%b", s,r,clk,q,qb);
			$dumpfile("srff1.vcd");
			$dumpvars(0,testbench);
			s=1; r=0; #10
			s=0; r=0; #10
			s=0; r=1; #10
			s=0; r=0; #10
			s=1; r=1; #10
			s=0; r=0; #10
			$finish;
		end
endmodule
						
