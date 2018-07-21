module video_top(audio_clk, LeftPlayData, RightPlayData, ADC_SDATA, MCLK, BCLK, reset,
LRCLK, NewFrame, LeftRecData, RightRecData, DAC_SDATA);
   parameter N=24;
   input audio_clk, ADC_SDATA, reset;
   input wire[N-1:0] LeftPlayData;
   input wire[N-1:0] RightPlayData;
   output MCLK, BCLK, LRCLK, NewFrame, DAC_SDATA;
   output wire[N-1:0] LeftRecData;
   output wire[N-1:0] RightRecData;
   
   assign MCLK = ~audio_clk;
   
   wire [7:0] q1;
   wire [4:0] BitCount;
   
   q8 #(.N(8)) q_8(.reset(reset), .clk(audio_clk), .q(q1)); 
   
   assign BCLK = q1[1];
   assign BitCount = q1[6:2];
   assign LRCLK = q1[7];
   
   wire enl, enr, ld;
   Produce  p(.BitCount(BitCount), .LRCLK(LRCLK), .enl(enl), .enr(enr), .ld(ld), .NewFrame(NewFrame));
   
   wire [N-1:0] sig1;
   wire [N-1:0] sig2;
   wire [N-1:0] sig3;
   assign sig1 = LRCLK? RightPlayData:LeftPlayData;
   
   Register #(.N(N)) r1(.d(sig1), .ld(ld), .sdin(1'b0), .clk(~BCLK), .q(sig2));
   
   assign DAC_SDATA = sig2[N-1];
   
   Register #(.N(N)) r2(.d(24'b0), .ld(1'b0), .sdin(ADC_SDATA), .clk(BCLK), .q(sig3));
   d #(.N(24)) d1(.d(sig3), .q(LeftRecData), .en(enl), .clk(BCLK));
   d #(.N(24)) d2(.d(sig3), .q(RightRecData), .en(enr), .clk(BCLK));
endmodule
   
   
   
