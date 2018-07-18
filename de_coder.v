module de_coder(audio_clk, reset, LeftPlayData, RightPlayData, 
LeftRecData, RightRecData, DAC_SDATA, ADC_SDATA, MCLK, BCLK, LRCLK, NewFrame, SDA, SCL, error);
    input audio_clk, reset, ADC_SDATA;
    input [23:0] LeftPlayData, RightPlayData;
    output [23:0] LeftRecData, RightRecData;
    output DAC_SDATA, MCLK, BCLK, LRCLK, NewFrame, error;
    inout SDA, SCL;
    
    video_top #(.N(24)) 
       v1(.audio_clk(audio_clk),
       .LeftPlayData(LeftPlayData),
       .RightPlayData(RightPlayData),
       .ADC_SDATA(ADC_SDATA),
       .MCLK(MCLK), 
       .BCLK(BCLK), 
       .reset(reset),
       .LRCLK(LRCLK), 
       .NewFrame(NewFrame), 
       .LeftRecData(LeftRecData), 
       .RightRecData(RightRecData), 
       .DAC_SDATA(DAC_SDATA));
    
    wire ready,Write;
    wire [7:0] SubAddrL;
    wire [7:0] data;
    wire I2C_clk;
    
    buf b1(I2C_clk,LRCLK);
    
    Com c1(.I2C_clk(I2C_clk), 
           .NewCom(ready),
           .reset(reset),
           .SubAddrL(SubAddrL),
           .data(data),
           .Write(Write));
    
    I2C i1(.reset(reset),
           .write(Write),
           .I2C_clk(I1C_clk),
           .Addr(8'b01110110),
           .SubAddrH(8'b0100_0000),
           .SubAddrL(SubAddrL),
           .Data(data),
           .SDA(SDA),
           .SCL(SCL),
           .ready(ready),
           .errory(error));
    
endmodule