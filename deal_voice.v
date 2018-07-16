module deal_voice(clk, reset, ADC_SDATA, ChangeEn, RisingTone, 
	DAC_SDATA, MCLK, BCLK, LRCLK, SDA, SCL, errory);
	input clk, reset, ADC_SDATA, ChangeEn, RisingTone;
	output DAC_SDATA, MCLK, BCLK, LRCLK, SDA, SCL, errory;
	
	wire[15:0] Sampletemp, SampleOut;
	//DCM处理clk
	DCM_PLL DCM(
		.clk_out1(sys_clk),
		.clk_out2(audio_clk),
		.reset(reset),
		.locked(),
		.clk_in1(clk)
		);

	//音频输入处理
	wire[23:0] LeftPlayData, RightPlayData, LeftRecData, RightRecData;
    wire NewFrame;
	de_coder de_coder(
		.audio_clk(audio_clk), 
		.reset(reset), 
		.ADC_SDATA(ADC_SDATA), 
		.LeftPlayData(LeftPlayData), 
		.RightPlayData(RightPlayData), 
		//output
		.LeftRecData(LeftRecData), 
		.RightRecData(RightRecData), 
		.DAC_SDATA(DAC_SDATA), 
		.MCLK(MCLK), 
		.BCLK(BCLK), 
		.LRCLK(LRCLK), 
		.NewFrame(NewFrame), 
		.SDA(SDA), 
		.SCL(SCL), 
		.errory(errory)
		);
    wire temp, ready;
	dffre #(.Width(1)) D1(.d(NewFrame), .clk(sys_clk), .r(reset), .q(temp), .en(1'b1));
	dffre #(.Width(1)) D2(.d(temp), .clk(sys_clk), .r(reset), .q(ready), .en(1'b1));
	
	fir_H firh(.sample(ready),.in(RightRecData[23:8]),.clk(sys_clk),.out(Sampletemp));
	
	changevoice changevoice(.SampleIn(RisingTone?Sampletemp:RightRecData[23:8]),.ready(ready),.clk(sys_clk),
	  .RisingTone(RisingTone),.reset(reset),.SampleOut(SampleOut),.SampleCount());
  
  assign RightPlayData = ChangeEn?{SampleOut,8'd0}:RightRecData;
  assign LeftPlayData = ChangeEn?{SampleOut,8'd0}:LeftRecData;
  
endmodule