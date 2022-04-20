module srlatch(r,s,q,qb);
	input r,s;
	output q,qb;
	nor(q,r,qb);
	nor(qb,s,q);
endmodule


