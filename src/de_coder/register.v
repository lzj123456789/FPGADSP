module register(d,ld,sdin,clk,q);
	input[23:0] d;
	input ld, sdin, clk;
	output[23:0] q;
  
  reg[23:0] q;
	always @(posedge clk) 
	begin
		if (ld)
			q = d;
		else 
			q = {q[22:0], sdin};
	end

endmodule