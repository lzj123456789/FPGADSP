`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: zju
// Engineer:qmj

////////////////////////////////////////////////////////////////////////////////

module I2cInterface_tb_v;

	// Inputs
	reg clk;
	reg [7:0] SubAddrL;
	reg [7:0] data;
	reg [7:0] Addr;
	reg write;
	reg reset;

	// Outputs
	wire ready;
	wire error;

	// Bidirs
	wire scl;
	wire sda;
   reg link_sda;
		// Instantiate the Unit Under Test (UUT)
	/*I2cInterface uut (
		.clk(clk), 
		.SubAddrL(SubAddrL), 
		.data(data), 
		.write(write), 
		.reset(reset), 
		.ready(ready), 
		.error(error), 
		.scl(scl), 
		.sda(sda)
	);*/
	de_coder_config uut(
		.SuBAddrL(SubAddrL),
		.Data(data),
		.reset(reset), 
		.write(write),
		.I2C_clk(clk),
		.SDA(sda),
		.SCL(scl),
		.ready(ready), 
		.errory(error)
		);
	
	initial begin	clk = 0; forever #50 clk=~clk; end	
	
	initial begin
		// Initialize Inputs
		Addr = 8'h2c;
		SubAddrL = 8'h1b;
		data = 8'h5a;
		write = 0;
		reset = 0;
     	 link_sda=0;
		// Wait 100 ns for global reset to finish
		#100 reset=1;
		#100 reset=0;
		#150 write=1;
		#100 write=0;
		#1900 link_sda=1;
		#200 link_sda=0;
    #1600 link_sda=1;
		#200 link_sda=0;  
		#1600 link_sda=1;
		#200 link_sda=0;  
		#1600 link_sda=1;
		#200 link_sda=0;
    #2000 $stop;		
		// Add stimulus here

	end
    assign sda=link_sda?1'b0:1'bz;
endmodule

