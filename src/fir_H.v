module fir_H(xIn,sample,clk,reset,yOut);
input sample, clk, reset;
	input[15:0] xIn;
	output[15:0] yOut;
	
	reg [511:0] x_temp;
	reg [15:0] x_out;
   	wire[4:0] q;
	always @(posedge clk) 
	begin
	   if (reset)
	      x_temp = 512'b0;
		else if (sample) begin
			x_temp = x_temp>>16;
			x_temp[511:496] = xIn;
		end
	end
    
    
	always @(*) 
	begin
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


	wire[31:0] p, raw_y;

	//control
	wire oe, clr, co;
	firControl firControl0(.reset(reset), .sample(sample), 
			.clk(clk), .co(co), .clr(clr), .oe(oe));

	//counter
	
	counterT #(.n(5'b1111_1),.counter_bits(5)) counter(.r(clr), .clk(clk), .q(q), .co(co), .en(1'b1));

	wire[15:0] b;

	h_rom_h h(.addr(~q+1),.dout(b));


	//multiplier

	booth_multiplier mu(.A(x_out), .B(b), .P(p));

	wire[32:0] temp_s;
	wire[31:0] s;

	Naddr  #(.N(33)) adder_32(.a({raw_y[31],raw_y}), .b({p[31],p}), .ci(1'b0), .s(temp_s), .co());
	
	//assign s = temp_s;
	assign s = (temp_s[32] == temp_s[31])? temp_s[31:0]:(temp_s[32]? 32'h8000_0000:32'h7fff_fff);

	dffre #(.WIDTH(32)) D_32(.d(s),.clk(clk), .r(clr), .q(raw_y), .en(1'b1));
	wire[15:0] temp_y;

	assign temp_y = raw_y[31]? (raw_y[30]? raw_y[30:15]:16'h8000)
			:(raw_y[30]? 16'h7fff:raw_y[30:15]);

	//Dffre #(.Width(16)) D_y(.d(temp_y), .q(yOut), .clk(clk), .en(oe), .reset(reset));

	dffre #(.WIDTH(32)) D_y(.d(temp_y), .clk(clk), .r(reset), .q(yOut), .en(oe));


endmodule