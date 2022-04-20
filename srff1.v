module srff1(s,r,clk,q,qb);
	input s,r,clk;
	output q,qb;
	wire a,b;
	nand(a,s,clk);
	nand(b,r,clk);
	nand(q,a,qb);
	nand(qb,b,q);
endmodule 
