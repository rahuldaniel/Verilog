module testbench();
	reg d,clk;
	wire q,qb,s,r;
	dff uut (.d(d), .clk(clk));
	assign s=d;
	assign r=~d;
	initial
		begin
			clk =0;
			forever #5 clk=~clk;
		end
	initial
		begin
			$monitor("d=%b, s=%b, r=%b, clk=%b, q=%b, qb=%b",d,s,r,clk,q,qb);
			$dumpfile("dff.vcd");
			$dumpvars(0,testbench);
			d=0; #10
			d=1; #10
			$finish;
		end
endmodule
