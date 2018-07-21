module de_coder_produce_con(clk,NewCom,reset,ComEnd, write);
	
	input clk,NewCom,reset,ComEnd;
	output write;

	parameter[1:0] ComReset = 2'b00, ComWrite = 2'b01,
		ComWait = 2'b10, ComStop = 2'b11;

	reg[1:0] state, n_state;
	always @(posedge clk) 
	begin
		if (reset)
			state <= ComReset;
		else 
			state <= n_state;
	end 
	reg write;
	always @(*)
	begin
		case(state)
			ComReset:
				begin
					write = 0;
					n_state = ComWrite;
				end
			ComWrite:
				begin
					write = 1;
					n_state = ComWait;
				end
			ComWait:
				begin
					write = 0;
					if (ComEnd)
						n_state = ComStop;
					else if (NewCom)
						n_state = ComWrite;
					else 
						n_state = ComWait;
				end
		endcase
	end
endmodule