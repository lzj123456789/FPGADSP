module fir_H(xIn,sample,clk,reset,yOut);
input[15:0] xIn;
input sample,clk;
input reset;
output[15:0] yOut;

wire co;
wire oe;
wire clr;

firControl firControl0(
	.sample(sample),
	.reset(reset),
	.co(co),
	.clk(clk),
	.oe(oe),
	.clr(clr));

reg[511:0] x_temp;


always @(posedge clk ) begin
	if(reset)
		x_temp = 512'b0;
	else if(sample)begin
		x_temp = x_temp>>16;
		x_temp[511:496] = xIn;
	end

end

wire [4:0] q;
always @(*) begin
	case (q)
			5'b00000: x_out=x_temp[15:0];
			5'b00001: x_out=x_temp[31:16];
			5'b00010: x_out=x_temp[47:32];
			5'b00011: x_out=x_temp[63:48];
			5'b00100: x_out=x_temp[79:64];
			5'b00101: x_out=x_temp[95:80];
			5'b00110: x_out=x_temp[111:96];
			5'b00111: x_out=x_temp[127:112];
			5'b01000: x_out=x_temp[143:128];
			5'b01001: x_out=x_temp[159:144];
			5'b01010: x_out=x_temp[175:160];
			5'b01011: x_out=x_temp[191:176];
			5'b01100: x_out=x_temp[207:192];
			5'b01101: x_out=x_temp[223:208];
			5'b01110: x_out=x_temp[239:224];
			5'b01111: x_out=x_temp[255:240];
			5'b10000: x_out=x_temp[271:256];
			5'b10001: x_out=x_temp[287:272];
			5'b10010: x_out=x_temp[303:288];
			5'b10011: x_out=x_temp[319:304];
			5'b10100: x_out=x_temp[335:320];
			5'b10101: x_out=x_temp[351:336];
			5'b10110: x_out=x_temp[367:352];
			5'b10111: x_out=x_temp[383:368];
			5'b11000: x_out=x_temp[399:384];
			5'b11001: x_out=x_temp[415:400];
			5'b11010: x_out=x_temp[431:416];
			5'b11011: x_out=x_temp[447:432];
			5'b11100: x_out=x_temp[463:448];
			5'b11101: x_out=x_temp[479:464];
			5'b11110: x_out=x_temp[495:480];
			5'b11111: x_out=x_temp[511:496];

	endcase
end

/*wire[15:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22,x23
,x24,x25,x26,x27,x28,x29,x30,x31;

dffre #(.WIDTH(16)) dffre0(.d(xIn),.en(sample),.r(1'b0),.clk(clk),.q(x0));
dffre #(.WIDTH(16)) dffre1(.d(x0),.en(sample),.r(1'b0),.clk(clk),.q(x1));
dffre #(.WIDTH(16)) dffre2(.d(x1),.en(sample),.r(1'b0),.clk(clk),.q(x2));
dffre #(.WIDTH(16)) dffre3(.d(x2),.en(sample),.r(1'b0),.clk(clk),.q(x3));
dffre #(.WIDTH(16)) dffre4(.d(x3),.en(sample),.r(1'b0),.clk(clk),.q(x4));
dffre #(.WIDTH(16)) dffre5(.d(x4),.en(sample),.r(1'b0),.clk(clk),.q(x5));
dffre #(.WIDTH(16)) dffre6(.d(x5),.en(sample),.r(1'b0),.clk(clk),.q(x6));
dffre #(.WIDTH(16)) dffre7(.d(x6),.en(sample),.r(1'b0),.clk(clk),.q(x7));
dffre #(.WIDTH(16)) dffre8(.d(x7),.en(sample),.r(1'b0),.clk(clk),.q(x8));
dffre #(.WIDTH(16)) dffre9(.d(x8),.en(sample),.r(1'b0),.clk(clk),.q(x9));
dffre #(.WIDTH(16)) dffre10(.d(x9),.en(sample),.r(1'b0),.clk(clk),.q(x10));
dffre #(.WIDTH(16)) dffre11(.d(x10),.en(sample),.r(1'b0),.clk(clk),.q(x11));
dffre #(.WIDTH(16)) dffre12(.d(x11),.en(sample),.r(1'b0),.clk(clk),.q(x12));
dffre #(.WIDTH(16)) dffre13(.d(x12),.en(sample),.r(1'b0),.clk(clk),.q(x13));
dffre #(.WIDTH(16)) dffre14(.d(x13),.en(sample),.r(1'b0),.clk(clk),.q(x14));
dffre #(.WIDTH(16)) dffre15(.d(x14),.en(sample),.r(1'b0),.clk(clk),.q(x15));
dffre #(.WIDTH(16)) dffre16(.d(x15),.en(sample),.r(1'b0),.clk(clk),.q(x16));
dffre #(.WIDTH(16)) dffre17(.d(x16),.en(sample),.r(1'b0),.clk(clk),.q(x17));
dffre #(.WIDTH(16)) dffre18(.d(x17),.en(sample),.r(1'b0),.clk(clk),.q(x18));
dffre #(.WIDTH(16)) dffre19(.d(x18),.en(sample),.r(1'b0),.clk(clk),.q(x19));
dffre #(.WIDTH(16)) dffre20(.d(x19),.en(sample),.r(1'b0),.clk(clk),.q(x20));
dffre #(.WIDTH(16)) dffre21(.d(x20),.en(sample),.r(1'b0),.clk(clk),.q(x21));
dffre #(.WIDTH(16)) dffre22(.d(x21),.en(sample),.r(1'b0),.clk(clk),.q(x22));
dffre #(.WIDTH(16)) dffre23(.d(x22),.en(sample),.r(1'b0),.clk(clk),.q(x23));
dffre #(.WIDTH(16)) dffre24(.d(x23),.en(sample),.r(1'b0),.clk(clk),.q(x24));
dffre #(.WIDTH(16)) dffre25(.d(x24),.en(sample),.r(1'b0),.clk(clk),.q(x25));
dffre #(.WIDTH(16)) dffre26(.d(x25),.en(sample),.r(1'b0),.clk(clk),.q(x26));
dffre #(.WIDTH(16)) dffre27(.d(x26),.en(sample),.r(1'b0),.clk(clk),.q(x27));
dffre #(.WIDTH(16)) dffre28(.d(x27),.en(sample),.r(1'b0),.clk(clk),.q(x28));
dffre #(.WIDTH(16)) dffre29(.d(x28),.en(sample),.r(1'b0),.clk(clk),.q(x29));
dffre #(.WIDTH(16)) dffre30(.d(x29),.en(sample),.r(1'b0),.clk(clk),.q(x30));
dffre #(.WIDTH(16)) dffre31(.d(x30),.en(sample),.r(1'b0),.clk(clk),.q(x31));
*/
wire[4:0] qSel;
counterT #(.n(32),.counter_bits(5)) counterT(.clk(clk),.en(1'b1),.r(clr),.q(q),.co(co));

wire[15:0] multiA;
SelTWtoO  SelTWto0(.selQ(multiA),.sel(qSel),.x0(x0),.x1(x1),.x2(x2),.x3(x3),.x4(x4),.x5(x5),.x6(x6),.x7(x7),.x8(x8),.x9(x9)
,.x10(x10),.x11(x11),.x12(x12),.x13(x13),.x14(x14),.x15(x15),.x16(x16),.x17(x17)
,.x18(x18),.x19(x19),.x20(x20),.x21(x21),.x22(x22),.x23(x23),.x24(x24),.x25(x25)
,.x26(x26),.x27(x27),.x28(x28),.x29(x29),.x30(x30),.x31(x31));

wire[15:0] multiB;
h_rom_h h_rom_h1(.addr(~q+1),.dout(multiB));

wire[31:0] MultiResult;
booth_multiplier booth_multiplier0(.A(x_out),.B(multiB),.P(MultiResult));
wire[31:0] raw_y;
wire[32:0] sumd; 
Naddr #(.N(33)) Naddr(.a({raw_y[31],raw_y}),.b({MultiResult[31],MultiResult}),.s(sumd),.ci(1'b0),.co());

wire[31:0] sum;
assign sum = (sumd[31]==sumd[32])?sumd[31:0]:(sumd[32]?32'h8000_0000:32'h7fff_fff);

dffre #(.WIDTH(32)) dffre32(.d(sum),.en(1'b1),.r(clr),.clk(clk),.q(raw_y));

wire[15:0] tempy;
assign tempy = raw_y[31]?(raw_y[30]?raw_y[30:15] : 16'h8000 ) :(raw_y[30]? 16'h7fff: raw_y[30:15]) ;

dffre #(.WIDTH(16)) dffre33(.d(tempy),.en(oe),.r(1'b0),.clk(clk),.q(yOut));

endmodule