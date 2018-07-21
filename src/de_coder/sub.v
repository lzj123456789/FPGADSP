module  sub(clk, en, s, q, LastData);
	input clk, en, s;
	output LastData;
	output[2:0] q;

	reg[2:0] q;

	always @(posedge clk) 
	begin
		if ( s)
			q = 3'b111;
		else if (en)
			q = q - 1;
	end

	assign LastData = (q==3'b0);
endmodule
