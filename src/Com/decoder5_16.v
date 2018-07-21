module decoder5_16(in, out);
    input [4:0]in;
    output reg [15:0] out;
    always@(*)
       case (in)
           5'b00000: out = 16'h0A_01;
			  5'b00001: out = 16'h0B_07;
			  5'b00010: out = 16'h0C_01;
  	      		5'b00011: out = 16'h0D_07;
		  	  5'b00100: out = 16'h19_13;
			  5'b00101: out = 16'h1C_21;
			  5'b00110: out = 16'h1E_41;
			  5'b00111: out = 16'h20_05;
			  5'b01000: out = 16'h21_11;
			  5'b01001: out = 16'h23_E6;
			  5'b01010: out = 16'h24_E6;
			  5'b01011: out = 16'h25_E6;
			  5'b01100: out = 16'h26_E6;
			  5'b01101: out = 16'h29_03;
			  5'b01110: out = 16'h2A_03;
			  5'b01111: out = 16'hF2_01;
			  5'b10000: out = 16'hF3_01;
			  5'b10001: out = 16'hF9_7F;
			  5'b10010: out = 16'h22_01;
			  5'b10011: out = 16'hFA_03;
			  default:  out = 16'hFA_03;
       endcase
endmodule