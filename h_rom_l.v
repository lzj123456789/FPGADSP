module h_rom_l(addr,dout,RisingTone);
input[5:0] addr;
input RisingTone;
output reg[15:0] dout;

always @(*)
begin
   if(~RisingTone)
	   case(addr)
		6'b111111: dout = 16'b0000000001000000;
		6'b111110: dout = 16'b0000000000011010;
		6'b111101: dout = 16'b1111111111100011;
		6'b111100: dout = 16'b1111111110100111;
		6'b111011: dout = 16'b1111111101111100;
		6'b111010: dout = 16'b1111111101111110;
		6'b111001: dout = 16'b1111111111000011;
		6'b111000: dout = 16'b0000000001001010;
		6'b110111: dout = 16'b0000000011101100;
		6'b110110: dout = 16'b0000000101100000;
		6'b110101: dout = 16'b0000000101010110;
		6'b110100: dout = 16'b0000000010011100;
		6'b110011: dout = 16'b1111111101001000;
		6'b110010: dout = 16'b1111110111001000;
		6'b110001: dout = 16'b1111110011001001;
		6'b110000: dout = 16'b1111110011111000;
		6'b101111: dout = 16'b1111111010101000;
		6'b101110: dout = 16'b0000000110001110;
		6'b101101: dout = 16'b0000010010110101;
		6'b101100: dout = 16'b0000011010110111;
		6'b101011: dout = 16'b0000011001000101;
		6'b101010: dout = 16'b0000001011000101;
		6'b101001: dout = 16'b1111110011001001;
		6'b101000: dout = 16'b1111011000101101;
		6'b100111: dout = 16'b1111000110110100;
		6'b100110: dout = 16'b1111001000110101;
		6'b100101: dout = 16'b1111100110011001;
		6'b100100: dout = 16'b0000100000000011;
		6'b100011: dout = 16'b0001101101111000;
		6'b100010: dout = 16'b0011000000110010;
		6'b100001: dout = 16'b0100000110010110;
		6'b100000: dout = 16'b0100101110000000;
		6'b011111: dout = 16'b0100101110000000;
		6'b011110: dout = 16'b0100000110010110;
		6'b011101: dout = 16'b0011000000110010;
		6'b011100: dout = 16'b0001101101111000;
		6'b011011: dout = 16'b0000100000000011;
		6'b011010: dout = 16'b1111100110011001;
		6'b011001: dout = 16'b1111001000110101;
		6'b011000: dout = 16'b1111000110110100;
		6'b010111: dout = 16'b1111011000101101;
		6'b010110: dout = 16'b1111110011001001;
		6'b010101: dout = 16'b0000001011000101;
		6'b010100: dout = 16'b0000011001000101;
		6'b010011: dout = 16'b0000011010110111;
		6'b010010: dout = 16'b0000010010110101;
		6'b010001: dout = 16'b0000000110001110;
		6'b010000: dout = 16'b1111111010101000;
		6'b001111: dout = 16'b1111110011111000;
		6'b001110: dout = 16'b1111110011001001;
		6'b001101: dout = 16'b1111110111001000;
		6'b001100: dout = 16'b1111111101001000;
		6'b001011: dout = 16'b0000000010011100;
		6'b001010: dout = 16'b0000000101010110;
		6'b001001: dout = 16'b0000000101100000;
		6'b001000: dout = 16'b0000000011101100;
		6'b000111: dout = 16'b0000000001001010;
		6'b000110: dout = 16'b1111111111000011;
		6'b000101: dout = 16'b1111111101111110;
		6'b000100: dout = 16'b1111111101111100;
		6'b000011: dout = 16'b1111111110100111;
		6'b000010: dout = 16'b1111111111100011;
		6'b000001: dout = 16'b0000000000011010;
		6'b000000: dout = 16'b0000000001000000;
	  	 /*0: dout=65526;
		 1: dout=5 ;
		 2: dout=19 ;
		 3: dout=28 ;
		 4: dout=23 ;
		 5: dout=3 ;
		 6: dout=65507 ;
		 7: dout=65478 ;
		 8: dout=65472 ;
		 9: dout=65505 ;
		 10:dout=37 ;
		 11:dout=110 ;
		 12:dout=146 ;
		 13:dout=105 ;
		 14:dout=65521;
		 15:dout=65367 ;
		 16:dout=65259 ;
		 17:dout=65279 ;
		 18:dout=65457 ;
		 19:dout=206 ;
		 20:dout=464; 
		 21:dout=537;
		 22:dout=319;
		 23:dout=65371;
		 24:dout=64805;
		 25:dout=64449;
		 26:dout=64599;
		 27:dout=65418;
		 28:dout=1301;
		 29:dout=3011;
		 30:dout=4548 ;
		 31:dout=5420 ;
		 32:dout=65523;
		 33:dout=6;
		 34:dout=25;
		 35:dout=37;
		 36:dout=31;
		 37:dout=4;
		 38:dout=65497;
		 39:dout=65458;
		 40:dout=65451;
		 41:dout=65495;
		 42:dout=49;
		 43:dout=147;
		 44:dout=194;
		 45:dout=140;
		 46:dout=65730;
		 47:dout=65676;
		 48:dout=65516;
		 49:dout=65310;
		 50:dout=65166;
		 51:dout=274;
		 52:dout=619;
		 53:dout=716;
		 54:dout=425;
		 55:dout=66252;
		 56:dout=65961;
		 57:dout=65316;
		 58:dout=64561;
		 59:dout=64087;
		 60:dout=1734;
		 61:dout=4014;
		 62:dout=6064;
		 default:dout=7226;*/
		/*6'b111111: dout = 16'b1111111111010111;
		6'b111110: dout = 16'b1111111110011000;
		6'b111101: dout = 16'b1111111110001100;
		6'b111100: dout = 16'b1111111111001000;
		6'b111011: dout = 16'b0000000001000011;
		6'b111010: dout = 16'b0000000011000110;
		6'b111001: dout = 16'b0000000011110010;
		6'b111000: dout = 16'b0000000001111010;
		6'b110111: dout = 16'b1111111101101011;
		6'b110110: dout = 16'b1111111001001110;
		6'b110101: dout = 16'b1111110111110111;
		6'b110100: dout = 16'b1111111011111111;
		6'b110011: dout = 16'b0000000100110001;
		6'b110010: dout = 16'b0000001101100010;
		6'b110001: dout = 16'b0000001111110101;
		6'b110000: dout = 16'b0000000111101001;
		6'b101111: dout = 16'b1111110111001000;
		6'b101110: dout = 16'b1111100111001100;
		6'b101101: dout = 16'b1111100011010110;
		6'b101100: dout = 16'b1111110010010011;
		6'b101011: dout = 16'b0000001111110100;
		6'b101010: dout = 16'b0000101100001011;
		6'b101001: dout = 16'b0000110011010001;
		6'b101000: dout = 16'b0000011000110010;
		6'b100111: dout = 16'b1111100010110101;
		6'b100110: dout = 16'b1110101011111111;
		6'b100101: dout = 16'b1110011001111001;
		6'b100100: dout = 16'b1111001011000110;
		6'b100011: dout = 16'b0001000101010011;
		6'b100010: dout = 16'b0011101101011111;
		6'b100001: dout = 16'b0110001111011101;
		6'b100000: dout = 16'b0111110010101010;
		6'b011111: dout = 16'b0111110010101010;
		6'b011110: dout = 16'b0110001111011101;
		6'b011101: dout = 16'b0011101101011111;
		6'b011100: dout = 16'b0001000101010011;
		6'b011011: dout = 16'b1111001011000110;
		6'b011010: dout = 16'b1110011001111001;
		6'b011001: dout = 16'b1110101011111111;
		6'b011000: dout = 16'b1111100010110101;
		6'b010111: dout = 16'b0000011000110010;
		6'b010110: dout = 16'b0000110011010001;
		6'b010101: dout = 16'b0000101100001011;
		6'b010100: dout = 16'b0000001111110100;
		6'b010011: dout = 16'b1111110010010011;
		6'b010010: dout = 16'b1111100011010110;
		6'b010001: dout = 16'b1111100111001100;
		6'b010000: dout = 16'b1111110111001000;
		6'b001111: dout = 16'b0000000111101001;
		6'b001110: dout = 16'b0000001111110101;
		6'b001101: dout = 16'b0000001101100010;
		6'b001100: dout = 16'b0000000100110001;
		6'b001011: dout = 16'b1111111011111111;
		6'b001010: dout = 16'b1111110111110111;
		6'b001001: dout = 16'b1111111001001110;
		6'b001000: dout = 16'b1111111101101011;
		6'b000111: dout = 16'b0000000001111010;
		6'b000110: dout = 16'b0000000011110010;
		6'b000101: dout = 16'b0000000011000110;
		6'b000100: dout = 16'b0000000001000011;
		6'b000011: dout = 16'b1111111111001000;
		6'b000010: dout = 16'b1111111110001100;
		6'b000001: dout = 16'b1111111110011000;
		6'b000000: dout = 16'b1111111111010111;*/
	   endcase
	else
	   case(addr)

	   /*
		3.5times wc = pi/5
		6'b111111: dout = 16'b0000000001001011;
		6'b111110: dout = 16'b0000000000011110;
		6'b111101: dout = 16'b1111111111011110;
		6'b111100: dout = 16'b1111111110011000;
		6'b111011: dout = 16'b1111111101100110;
		6'b111010: dout = 16'b1111111101101000;
		6'b111001: dout = 16'b1111111110111001;
		6'b111000: dout = 16'b0000000001010110;
		6'b110111: dout = 16'b0000000100010011;
		6'b110110: dout = 16'b0000000110011011;
		6'b110101: dout = 16'b0000000110001111;
		6'b110100: dout = 16'b0000000010110110;
		6'b110011: dout = 16'b1111111100101001;
		6'b110010: dout = 16'b1111110101101001;
		6'b110001: dout = 16'b1111110001000000;
		6'b110000: dout = 16'b1111110001110111;
		6'b101111: dout = 16'b1111111001101111;
		6'b101110: dout = 16'b0000000111010001;
		6'b101101: dout = 16'b0000010101111101;
		6'b101100: dout = 16'b0000011111010101;
		6'b101011: dout = 16'b0000011101010001;
		6'b101010: dout = 16'b0000001100111011;
		6'b101001: dout = 16'b1111110001000000;
		6'b101000: dout = 16'b1111010010001010;
		6'b100111: dout = 16'b1110111101010010;
		6'b100110: dout = 16'b1110111111101000;
		6'b100101: dout = 16'b1111100010000111;
		6'b100100: dout = 16'b0000100101011001;
		6'b100011: dout = 16'b0010000000001100;
		6'b100010: dout = 16'b0011100000111011;
		6'b100001: dout = 16'b0100110010000100;
		6'b100000: dout = 16'b0101100000010101;
		6'b011111: dout = 16'b0101100000010101;
		6'b011110: dout = 16'b0100110010000100;
		6'b011101: dout = 16'b0011100000111011;
		6'b011100: dout = 16'b0010000000001100;
		6'b011011: dout = 16'b0000100101011001;
		6'b011010: dout = 16'b1111100010000111;
		6'b011001: dout = 16'b1110111111101000;
		6'b011000: dout = 16'b1110111101010010;
		6'b010111: dout = 16'b1111010010001010;
		6'b010110: dout = 16'b1111110001000000;
		6'b010101: dout = 16'b0000001100111011;
		6'b010100: dout = 16'b0000011101010001;
		6'b010011: dout = 16'b0000011111010101;
		6'b010010: dout = 16'b0000010101111101;
		6'b010001: dout = 16'b0000000111010001;
		6'b010000: dout = 16'b1111111001101111;
		6'b001111: dout = 16'b1111110001110111;
		6'b001110: dout = 16'b1111110001000000;
		6'b001101: dout = 16'b1111110101101001;
		6'b001100: dout = 16'b1111111100101001;
		6'b001011: dout = 16'b0000000010110110;
		6'b001010: dout = 16'b0000000110001111;
		6'b001001: dout = 16'b0000000110011011;
		6'b001000: dout = 16'b0000000100010011;
		6'b000111: dout = 16'b0000000001010110;
		6'b000110: dout = 16'b1111111110111001;
		6'b000101: dout = 16'b1111111101101000;
		6'b000100: dout = 16'b1111111101100110;
		6'b000011: dout = 16'b1111111110011000;
		6'b000010: dout = 16'b1111111111011110;
		6'b000001: dout = 16'b0000000000011110;
		6'b000000: dout = 16'b0000000001001011;
	
	   */

	   // 4 times wc =pi\5

		6'b111111: dout = 16'b0000000001010110;
		6'b111110: dout = 16'b0000000000100011;
		6'b111101: dout = 16'b1111111111011001;
		6'b111100: dout = 16'b1111111110001001;
		6'b111011: dout = 16'b1111111101010000;
		6'b111010: dout = 16'b1111111101010011;
		6'b111001: dout = 16'b1111111110101111;
		6'b111000: dout = 16'b0000000001100011;
		6'b110111: dout = 16'b0000000100111010;
		6'b110110: dout = 16'b0000000111010101;
		6'b110101: dout = 16'b0000000111001000;
		6'b110100: dout = 16'b0000000011010000;
		6'b110011: dout = 16'b1111111100001010;
		6'b110010: dout = 16'b1111110100001010;
		6'b110001: dout = 16'b1111101110110111;
		6'b110000: dout = 16'b1111101111110110;
		6'b101111: dout = 16'b1111111000110101;
		6'b101110: dout = 16'b0000001000010011;
		6'b101101: dout = 16'b0000011001000110;
		6'b101100: dout = 16'b0000100011110011;
		6'b101011: dout = 16'b0000100001011100;
		6'b101010: dout = 16'b0000001110110001;
		6'b101001: dout = 16'b1111101110110111;
		6'b101000: dout = 16'b1111001011100111;
		6'b100111: dout = 16'b1110110011110000;
		6'b100110: dout = 16'b1110110110011100;
		6'b100101: dout = 16'b1111011101110110;
		6'b100100: dout = 16'b0000101010101111;
		6'b100011: dout = 16'b0010010010100000;
		6'b100010: dout = 16'b0100000001000011;
		6'b100001: dout = 16'b0101011101110011;
		6'b100000: dout = 16'b0110010010101011;
		6'b011111: dout = 16'b0110010010101011;
		6'b011110: dout = 16'b0101011101110011;
		6'b011101: dout = 16'b0100000001000011;
		6'b011100: dout = 16'b0010010010100000;
		6'b011011: dout = 16'b0000101010101111;
		6'b011010: dout = 16'b1111011101110110;
		6'b011001: dout = 16'b1110110110011100;
		6'b011000: dout = 16'b1110110011110000;
		6'b010111: dout = 16'b1111001011100111;
		6'b010110: dout = 16'b1111101110110111;
		6'b010101: dout = 16'b0000001110110001;
		6'b010100: dout = 16'b0000100001011100;
		6'b010011: dout = 16'b0000100011110011;
		6'b010010: dout = 16'b0000011001000110;
		6'b010001: dout = 16'b0000001000010011;
		6'b010000: dout = 16'b1111111000110101;
		6'b001111: dout = 16'b1111101111110110;
		6'b001110: dout = 16'b1111101110110111;
		6'b001101: dout = 16'b1111110100001010;
		6'b001100: dout = 16'b1111111100001010;
		6'b001011: dout = 16'b0000000011010000;
		6'b001010: dout = 16'b0000000111001000;
		6'b001001: dout = 16'b0000000111010101;
		6'b001000: dout = 16'b0000000100111010;
		6'b000111: dout = 16'b0000000001100011;
		6'b000110: dout = 16'b1111111110101111;
		6'b000101: dout = 16'b1111111101010011;
		6'b000100: dout = 16'b1111111101010000;
		6'b000011: dout = 16'b1111111110001001;
		6'b000010: dout = 16'b1111111111011001;
		6'b000001: dout = 16'b0000000000100011;
		6'b000000: dout = 16'b0000000001010110;

		/*
		3 times wc = pi/5
		6'b111111: dout = 16'b0000000001000000;
		6'b111110: dout = 16'b0000000000011010;
		6'b111101: dout = 16'b1111111111100011;
		6'b111100: dout = 16'b1111111110100111;
		6'b111011: dout = 16'b1111111101111100;
		6'b111010: dout = 16'b1111111101111110;
		6'b111001: dout = 16'b1111111111000011;
		6'b111000: dout = 16'b0000000001001010;
		6'b110111: dout = 16'b0000000011101100;
		6'b110110: dout = 16'b0000000101100000;
		6'b110101: dout = 16'b0000000101010110;
		6'b110100: dout = 16'b0000000010011100;
		6'b110011: dout = 16'b1111111101001000;
		6'b110010: dout = 16'b1111110111001000;
		6'b110001: dout = 16'b1111110011001001;
		6'b110000: dout = 16'b1111110011111000;
		6'b101111: dout = 16'b1111111010101000;
		6'b101110: dout = 16'b0000000110001110;
		6'b101101: dout = 16'b0000010010110101;
		6'b101100: dout = 16'b0000011010110111;
		6'b101011: dout = 16'b0000011001000101;
		6'b101010: dout = 16'b0000001011000101;
		6'b101001: dout = 16'b1111110011001001;
		6'b101000: dout = 16'b1111011000101101;
		6'b100111: dout = 16'b1111000110110100;
		6'b100110: dout = 16'b1111001000110101;
		6'b100101: dout = 16'b1111100110011001;
		6'b100100: dout = 16'b0000100000000011;
		6'b100011: dout = 16'b0001101101111000;
		6'b100010: dout = 16'b0011000000110010;
		6'b100001: dout = 16'b0100000110010110;
		6'b100000: dout = 16'b0100101110000000;
		6'b011111: dout = 16'b0100101110000000;
		6'b011110: dout = 16'b0100000110010110;
		6'b011101: dout = 16'b0011000000110010;
		6'b011100: dout = 16'b0001101101111000;
		6'b011011: dout = 16'b0000100000000011;
		6'b011010: dout = 16'b1111100110011001;
		6'b011001: dout = 16'b1111001000110101;
		6'b011000: dout = 16'b1111000110110100;
		6'b010111: dout = 16'b1111011000101101;
		6'b010110: dout = 16'b1111110011001001;
		6'b010101: dout = 16'b0000001011000101;
		6'b010100: dout = 16'b0000011001000101;
		6'b010011: dout = 16'b0000011010110111;
		6'b010010: dout = 16'b0000010010110101;
		6'b010001: dout = 16'b0000000110001110;
		6'b010000: dout = 16'b1111111010101000;
		6'b001111: dout = 16'b1111110011111000;
		6'b001110: dout = 16'b1111110011001001;
		6'b001101: dout = 16'b1111110111001000;
		6'b001100: dout = 16'b1111111101001000;
		6'b001011: dout = 16'b0000000010011100;
		6'b001010: dout = 16'b0000000101010110;
		6'b001001: dout = 16'b0000000101100000;
		6'b001000: dout = 16'b0000000011101100;
		6'b000111: dout = 16'b0000000001001010;
		6'b000110: dout = 16'b1111111111000011;
		6'b000101: dout = 16'b1111111101111110;
		6'b000100: dout = 16'b1111111101111100;
		6'b000011: dout = 16'b1111111110100111;
		6'b000010: dout = 16'b1111111111100011;
		6'b000001: dout = 16'b0000000000011010;
		6'b000000: dout = 16'b0000000001000000;*/

		/*0: dout=65526;
		1: dout=5 ;
		2: dout=19 ;
		3: dout=28 ;
		4: dout=23 ;
		5: dout=3 ;
		6: dout=65507 ;
		7: dout=65478 ;
		8: dout=65472 ;
		9: dout=65505 ;
		10:dout=37 ;
		11:dout=110 ;
		12:dout=146 ;
		13:dout=105 ;
		14:dout=65521;
		15:dout=65367 ;
		16:dout=65259 ;
		17:dout=65279 ;
		18:dout=65457 ;
		19:dout=206 ;
		20:dout=464; 
		21:dout=537;
		22:dout=319;
		23:dout=65371;
		24:dout=64805;
		25:dout=64449;
		26:dout=64599;
		27:dout=65418;
		28:dout=1301;
		29:dout=3011;
		30:dout=4548 ;
		31:dout=5420 ;
		32:dout=65523;
		33:dout=6;
		34:dout=25;
		35:dout=37;
		36:dout=31;
		37:dout=4;
		38:dout=65497;
		39:dout=65458;
		40:dout=65451;
		41:dout=65495;
		42:dout=49;
		43:dout=147;
		44:dout=194;
		45:dout=140;
		46:dout=65730;
		47:dout=65676;
		48:dout=65516;
		49:dout=65310;
		50:dout=65166;
		51:dout=274;
		52:dout=619;
		53:dout=716;
		54:dout=425;
		55:dout=66252;
		56:dout=65961;
		57:dout=65316;
		58:dout=64561;
		59:dout=64087;
		60:dout=1734;
		61:dout=4014;
		62:dout=6064;
		default:dout=7226;*/

		/*6'b111111: dout = 16'b1111111111100010;
		6'b111110: dout = 16'b1111111110110010;
		6'b111101: dout = 16'b1111111110101001;
		6'b111100: dout = 16'b1111111111010110;
		6'b111011: dout = 16'b0000000000110011;
		6'b111010: dout = 16'b0000000010010100;
		6'b111001: dout = 16'b0000000010110101;
		6'b111000: dout = 16'b0000000001011100;
		6'b110111: dout = 16'b1111111110010001;
		6'b110110: dout = 16'b1111111010111011;
		6'b110101: dout = 16'b1111111001111001;
		6'b110100: dout = 16'b1111111100111111;
		6'b110011: dout = 16'b0000000011100100;
		6'b110010: dout = 16'b0000001010001001;
		6'b110001: dout = 16'b0000001011111000;
		6'b110000: dout = 16'b0000000101101111;
		6'b101111: dout = 16'b1111111001010110;
		6'b101110: dout = 16'b1111101101011001;
		6'b101101: dout = 16'b1111101010100000;
		6'b101100: dout = 16'b1111110101101110;
		6'b101011: dout = 16'b0000001011110111;
		6'b101010: dout = 16'b0000100001001000;
		6'b101001: dout = 16'b0000100110011100;
		6'b101000: dout = 16'b0000010010100110;
		6'b100111: dout = 16'b1111101010000111;
		6'b100110: dout = 16'b1111000000111111;
		6'b100101: dout = 16'b1110110011011010;
		6'b100100: dout = 16'b1111011000010100;
		6'b100011: dout = 16'b0000110011111110;
		6'b100010: dout = 16'b0010110010000111;
		6'b100001: dout = 16'b0100101011100110;
		6'b100000: dout = 16'b0101110110000000;
		6'b011111: dout = 16'b0101110110000000;
		6'b011110: dout = 16'b0100101011100110;
		6'b011101: dout = 16'b0010110010000111;
		6'b011100: dout = 16'b0000110011111110;
		6'b011011: dout = 16'b1111011000010100;
		6'b011010: dout = 16'b1110110011011010;
		6'b011001: dout = 16'b1111000000111111;
		6'b011000: dout = 16'b1111101010000111;
		6'b010111: dout = 16'b0000010010100110;
		6'b010110: dout = 16'b0000100110011100;
		6'b010101: dout = 16'b0000100001001000;
		6'b010100: dout = 16'b0000001011110111;
		6'b010011: dout = 16'b1111110101101110;
		6'b010010: dout = 16'b1111101010100000;
		6'b010001: dout = 16'b1111101101011001;
		6'b010000: dout = 16'b1111111001010110;
		6'b001111: dout = 16'b0000000101101111;
		6'b001110: dout = 16'b0000001011111000;
		6'b001101: dout = 16'b0000001010001001;
		6'b001100: dout = 16'b0000000011100100;
		6'b001011: dout = 16'b1111111100111111;
		6'b001010: dout = 16'b1111111001111001;
		6'b001001: dout = 16'b1111111010111011;
		6'b001000: dout = 16'b1111111110010001;
		6'b000111: dout = 16'b0000000001011100;
		6'b000110: dout = 16'b0000000010110101;
		6'b000101: dout = 16'b0000000010010100;
		6'b000100: dout = 16'b0000000000110011;
		6'b000011: dout = 16'b1111111111010110;
		6'b000010: dout = 16'b1111111110101001;
		6'b000001: dout = 16'b1111111110110010;
		6'b000000: dout = 16'b1111111111100010;*/
	   endcase
end

endmodule