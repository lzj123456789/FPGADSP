`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:40 05/29/2017
// Design Name:   IIS
// Module Name:   E:/AUDIO/IIS_tb.v
// Project Name:  count
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IIS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IIS_tb;

	// Inputs
	reg clk;
	reg reset;
	
	reg ADC_SDATA;
	reg [23:0] LeftDataIn;
	reg [23:0] RightDataIn;

	// Outputs
	wire Bclk;
	wire LRclk;
	wire DAC_SDATA;
	wire [23:0] LeftDataOut;
	wire [23:0] RightDataOut;
	wire ready;
    wire Mclk;
	// Instantiate the Unit Under Test (UUT)
	/*IIS uut (
		.clk(clk), 
		.reset(reset), 
		.Bclk(Bclk), 
		.LRclk(LRclk), 
		.Mclk(Mclk), 
		.ADC_SDATA(ADC_SDATA), 
		.DAC_SDATA(DAC_SDATA), 
		.LeftDataIn(LeftDataIn), 
		.RightDataIn(RightDataIn), 
		.LeftDataOut(LeftDataOut), 
		.RightDataOut(RightDataOut), 
		.ready(ready)
	);*/
	
	de_coder_port uut(
			.audio_clk(clk), 
			.LeftPlayData(LeftDataIn), 
			.RightPlayData(RightDataIn), 
			.reset(reset), 
			.ADC_SDATA(ADC_SDATA),
			.MCLK(Mclk), 
			.BCLK(Bclk), 
			.LRCLK(LRclk), 
			.NewFrame(ready), 
			.LeftRecData(LeftDataOut), 
			.RightRecData(RightDataOut),
			.DAC_SDATA(DAC_SDATA)
		);

	initial begin clk = 0;forever #50 clk=~clk; end
	initial begin
		// Initialize Inputs
		reset = 0;
		ADC_SDATA = 0;
		LeftDataIn = 0;
		RightDataIn = 0;

		// Wait 100 ns for global reset to finish
		#100 reset = 1;
    #100 reset = 0;
		LeftDataIn = 24'ha5_a5a5;
		RightDataIn =24'h5a_5a5a;
		#(100*2200) $stop;
		// Add stimulus here

	end
    always @(*) ADC_SDATA=DAC_SDATA;
endmodule

