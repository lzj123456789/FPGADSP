module counter_all(clk,en,load,reset,din,q,co);
	parameter Width = 10, N = 10'h3ff, St = 10'h0;
	input clk, en, load, reset;
	input[Width-1:0] din;
	output[Width-1:0] q;
	output co;

	reg[Width-1:0] q;

	always @(posedge clk) 
	begin
		if(reset)
			q = St;
		else if(load)
			q = din;
		else if(en && q == N)
			q = St;
		else if(en)
			q = q + 1;
		else 
		   q = q;
	end

	assign co = (q==N);
endmodule