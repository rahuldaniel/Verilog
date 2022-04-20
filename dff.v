module dff(d,clk,qb);
	input d,clk;
	output q,qb;
	wire s,r,a,b;
	assign s=d;
	assign r=~d;
	nand(a,s,clk);
	nand(b,r,clk);
	nand(q,a,qb);
	nand(qb,b,q);
endmodule 
