module h_rom_h(addr,dout);
input[4:0] addr;
output reg[15:0] dout;

always @(*)begin
			case(addr)
				5'b00000: dout = 16'b1111111111011111;
				5'b00001: dout = 16'b1111111111001101;
				5'b00010: dout = 16'b1111111110101100;
				5'b00011: dout = 16'b1111111101111010;
				5'b00100: dout = 16'b1111111100110111;
				5'b00101: dout = 16'b1111111011110000;
				5'b00110: dout = 16'b1111111010110101;
				5'b00111: dout = 16'b1111111010100001;
				5'b01000: dout = 16'b1111111011010100;
				5'b01001: dout = 16'b1111111101110111;
				5'b01010: dout = 16'b0000000010111000;
				5'b01011: dout = 16'b0000001011011001;
				5'b01100: dout = 16'b0000011001001101;
				5'b01101: dout = 16'b0000110000101111;
				5'b01110: dout = 16'b0001100010010001;
				5'b01111: dout = 16'b0101000010011001;
				5'b10000: dout = 16'b1010111101100111;
				5'b10001: dout = 16'b1110011101101111;
				5'b10010: dout = 16'b1111001111010001;
				5'b10011: dout = 16'b1111100110110011;
				5'b10100: dout = 16'b1111110100100111;
				5'b10101: dout = 16'b1111111101001000;
				5'b10110: dout = 16'b0000000010001001;
				5'b10111: dout = 16'b0000000100101100;
				5'b11000: dout = 16'b0000000101011111;
				5'b11001: dout = 16'b0000000101001011;
				5'b11010: dout = 16'b0000000100010000;
				5'b11011: dout = 16'b0000000011001001;
				5'b11100: dout = 16'b0000000010000110;
				5'b11101: dout = 16'b0000000001010100;
				5'b11110: dout = 16'b0000000000110011;
				5'b11111: dout = 16'b0000000000100001;
			endcase
end

endmodule