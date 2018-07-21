module de_coder(audio_clk, reset, ADC_SDATA, LeftPlayData, RightPlayData, 
	LeftRecData, RightRecData, 
	DAC_SDATA, MCLK, BCLK, LRCLK, NewFrame, SDA, SCL, errory);
	
	input audio_clk, reset, ADC_SDATA;
	output DAC_SDATA, MCLK, BCLK, LRCLK, NewFrame, SDA, SCL, errory;
	
	input[23:0] LeftPlayData, RightPlayData;
	output[23:0] LeftRecData, RightRecData;
	//assign LeftPlayData = LeftRecData;
	//assign RightPlayData = RightRecData;


	de_coder_port	port(
			.audio_clk(audio_clk), 
			.LeftPlayData(LeftPlayData), 
			.RightPlayData(RightPlayData), 
			.reset(reset), 
			.ADC_SDATA(ADC_SDATA),
			.MCLK(MCLK), 
			.BCLK(BCLK), 
			.LRCLK(LRCLK), 
			.NewFrame(NewFrame), 
			.LeftRecData(LeftRecData), 
			.RightRecData(RightRecData),
			.DAC_SDATA(DAC_SDATA)
			);

	wire I2C_clk;
	wire ready, write;
	wire [7:0] SubAddrL, data;

	buf b_clk(I2C_clk,audio_clk);
	
	de_coder_produce produce(
			.I2C_clk(I2C_clk),
			.NewCom(ready),
			.reset(reset),
			.write(write), 
			.SubAddrL(SubAddrL), 
			.data(data)
			);
			
	de_coder_config conf(
			.SuBAddrL(SubAddrL),
			.Data(data),
			.reset(reset), 
			.write(write),
			.I2C_clk(I2C_clk),
			.SDA(SDA),
			.SCL(SCL),
			.ready(ready), 
			.errory(errory)
			);
endmodule