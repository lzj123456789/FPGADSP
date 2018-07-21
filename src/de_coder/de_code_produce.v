module de_coder_produce(I2C_clk,NewCom,reset,
		write, SubAddrL, data);
	input I2C_clk, NewCom, reset;
	output write;
	output[7:0] SubAddrL, data;

	wire[4:0] q;
	wire ComEnd;
	counter_all #(.Width(5),.N(5'b1_1111))
		counter_5(.clk(I2C_clk), .en(NewCom), .load(1'b0), 
				.reset(reset), .din(5'b0), .q(q), .co(ComEnd));


	de_coder_produce_con 
		control(.clk(I2C_clk), .NewCom(NewCom), .reset(reset), 
				.ComEnd(ComEnd), .write(write));
	reg[15:0] temp;
	always @(*)
	begin
		case(q)
			5'b00000: temp = 16'h0A_01;
			5'b00001: temp = 16'h0B_07;
			5'b00010: temp = 16'h0C_01;
			5'b00011: temp = 16'h0D_07;
			5'b00100: temp = 16'h19_13;
			5'b00101: temp = 16'h1C_21;
			5'b00110: temp = 16'h1E_41;
			5'b00111: temp = 16'h20_05;
			5'b01000: temp = 16'h21_11;
			5'b01001: temp = 16'h23_E6;
			5'b01010: temp = 16'h24_E6;
			5'b01011: temp = 16'h25_E6;
			5'b01100: temp = 16'h26_E6;
			5'b01101: temp = 16'h29_03;
			5'b01110: temp = 16'h2A_03;
			5'b01111: temp = 16'hF2_01;
			5'b10000: temp = 16'hF3_01;
			5'b10001: temp = 16'hF9_7F;
			5'b10010: temp = 16'h22_01;
			5'b10011: temp = 16'hFA_03;
			default: temp = 16'hFA_03;
		endcase
	end
	assign SubAddrL = temp[15:8];
	assign data = temp[7:0];

endmodule