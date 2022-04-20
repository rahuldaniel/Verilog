module srff(s,r,q,qb,clk);
	input s,r,clk;
	output q,qb;
	wire x,y;
	nand(a,s,clk);
	nand(b,r,clk);
	nand(q,a,qb);
	nand(qb,b,q);
endmodule
