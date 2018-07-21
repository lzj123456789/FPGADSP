`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:zju
// Engineer: qmj
////////////////////////////////////////////////////////////////////////////////

module CodecSetData_tb;

	// Inputs
	reg clk;
	reg reset;
	reg ready;

	// Outputs
	wire [7:0] SubAddrL;
	wire [7:0] data;
	wire write;

	// Instantiate the Unit Under Test (UUT)
	/*
	CodecSetData uut (
		.clk(clk), 
		.reset(reset), 
		.ready(ready), 
		.SubAddrL(SubAddrL), 
		.data(data), 
		.write(write)
	);*/
	de_coder_produce uut(
		.I2C_clk(clk),
		.NewCom(ready),
		.reset(reset),
		.write(write), 
		.SubAddrL(SubAddrL), 
		.data(data)
		);

   	initial begin	clk = 0;forever #50 clk=~clk;end
	initial begin
		// Initialize Inputs
		reset = 0;
		ready = 0;

		// Wait 100 ns for global reset to finish
		#150 reset = 1;
      #100 reset = 0; 
      repeat (35)
		begin
      #800 ready=1;
      #100 ready=0;
      end
      #1000 $stop;
   end	  
		// Add stimulus here


      
endmodule

