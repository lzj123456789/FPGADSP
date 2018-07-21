module de_coder_port(audio_clk, LeftPlayData, RightPlayData, reset, ADC_SDATA,
	MCLK, BCLK, LRCLK, NewFrame, LeftRecData, RightRecData,DAC_SDATA);
	
	input audio_clk, reset, ADC_SDATA;
	input[23:0] LeftPlayData, RightPlayData;
	output MCLK, BCLK, LRCLK, NewFrame, DAC_SDATA;
	output[23:0] LeftRecData, RightRecData;

	assign MCLK = ~audio_clk;

	wire[7:0] q_8;

	counter_all #(.Width(8), .N(8'hff))
		counter_8(.clk(audio_clk), .en(1'b1), .load(1'b0),
				.reset(reset), .din(8'b0), .q(q_8), .co());
  
  wire[4:0] BitCount;
  
	assign BitCount = q_8[6:2];
	assign BCLK = q_8[1];
	assign LRCLK = q_8[7];

	//produce signal
	wire enl, enr, ld;
	assign enl = ~LRCLK&&BitCount[4]&&BitCount[3]
		&&~BitCount[2]&&~BitCount[1]&&BitCount[0];
	assign enr = LRCLK&&BitCount[4]&&BitCount[3]
		&&~BitCount[2]&&~BitCount[1]&&BitCount[0];
	assign ld = ~(|BitCount);
	assign NewFrame = LRCLK&&BitCount[4]&&BitCount[3]
		&&~BitCount[2]&&BitCount[1]&&~BitCount[0];

	wire[23:0] reg1_d, reg2_q, reg1_q;
	assign reg1_d = LRCLK? RightPlayData: LeftPlayData; 

	register reg1(.d(reg1_d), .ld(ld), .sdin(1'b0),
			.clk(~BCLK), .q(reg1_q));

	assign DAC_SDATA = reg1_q[23];

	register reg2(.d(24'b0), .ld(1'b0), .sdin(ADC_SDATA), 
			.clk(BCLK), .q(reg2_q));

	D_tr #(.N(24)) D_tr_L(.d(reg2_q), .clk(BCLK), .r(1'b0),
			.q(LeftRecData), .en(enl));

	D_tr #(.N(24)) D_tr_R(.d(reg2_q), .clk(BCLK), .r(1'b0),
			.q(RightRecData), .en(enr));


endmodule
