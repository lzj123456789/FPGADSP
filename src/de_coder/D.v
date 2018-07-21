module D_tr(d,clk,r,q,en);
	parameter N = 1;
	input[N-1:0] d;
	input clk, r, en;
	output[N-1:0] q;

	reg[N-1:0] q;

	always @(posedge clk)
	begin
		if(r)
			q<=0;
		else if(en)
			q<=d;
	end
endmodule