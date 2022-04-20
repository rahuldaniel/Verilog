module testbench();
	reg s,r;
	wire q,qb;
	srlatch uut(.s(s), .r(r), .q(q), .qb(qb) );
	initial
		begin
			clk =0;
			forever #5 clk=~clk;
		end
		initial
			begin
			$monitor("s=%b, r=%b, q=%b, qb=%b", s,r,q,qb);
			$dumpfile("srff1.vcd");
			$dumpvars(0,testbench);
			s=1; r=0; #10
			s=0; r=0; #10
			s=0; r=1; #10
			s=0; r=0; #10
			s=1; r=1; #10
			s=0; r=0;
		end
endmodule
						
