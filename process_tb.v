`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:41:48 11/19/2014
// Design Name:   Process
// Module Name:   E:/solution/lab33_VoiceChanger/ise/process_tb.v
// Project Name:  VoiceChanger
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Process
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module process_tb_v;
   parameter DELY=40;
	// Inputs
	reg clk;
	reg reset;
	reg RisingTone;
	reg ready;
	reg [15:0] SampleIn;
	

	// Outputs
	wire [15:0] SampleOut;
   integer i; 
	// Instantiate the Unit Under Test (UUT)
	change_voice uut (
		.clk(clk), 
		.reset(reset), 
		.RisingTone(RisingTone), 
		.ready(ready), 
		.SampleIn(SampleIn), 
		.SampleOut(SampleOut),
		.SampleCount()
	);
   glbl glbl();
   initial begin clk = 0;forever #(DELY/2) clk = ~clk;end
   //
	reg[8:0] q=0;
	always@(posedge clk) q=q+1;
	always@(*) if (q==10) ready=1;else ready=0;
	  
	
    
reg [15:0] buffer[0:2047] ; //???????????
initial 
  begin 
  $readmemh("data_in.txt",buffer);
         reset = 1;
	 RisingTone=0;
	 #(DELY*2+1)	  reset = 0;
	 i=0;
/*	 while(i<2000)
	 begin
     if(ready)
	    begin
	     SampleIn=buffer[i];
       i=i+1;
      end
   end  */
   repeat(768*2) @(posedge ready)
         begin
         SampleIn=buffer[i];
         i=i+1;
        end
       RisingTone=1;
    repeat(768) @(posedge ready)
         begin
         SampleIn=buffer[i];
        if(i==2047)i=0;else i=i+1;
        end 

     #(DELY*2) $stop;
  end
	 
endmodule

