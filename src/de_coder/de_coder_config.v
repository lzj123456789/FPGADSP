module de_coder_config(SuBAddrL,Data,reset, write,I2C_clk,
	SDA,SCL,ready, errory);
	input reset, write, I2C_clk;
	input[7:0] SuBAddrL, Data;
	output SDA,SCL,ready, errory;

	wire[2:0] bit_n;
	wire LastData, SetCountMax;

	sub sub1(.clk(I2C_clk), .en(~SCL), .s(SetCountMax), 
			.q(bit_n), .LastData(LastData));

	wire Addr_out, SuBAddrH_out, Data_out, SuBAddrL_out;
	choose choose_A(.Data_in(8'b0111_0110), .bit_n(bit_n), 
			.Data_out(Addr_out));
	choose choose_L(.Data_in(SuBAddrL), .bit_n(bit_n), 
			.Data_out(SuBAddrL_out));
	choose choose_H(.Data_in(8'h40), .bit_n(bit_n), 
			.Data_out(SuBAddrH_out));
	choose choose_D(.Data_in(Data), .bit_n(bit_n), 
			.Data_out(Data_out));


	wire SclEn;
	wire[2:0] Sel;
	de_coder_config_control control(
		.reset(reset), .write(write), .clk(I2C_clk), .SCL(SCL),
			.SDA(SDA), .LastData(LastData), 
		.SdaSel(Sel), .SclEn(SclEn), .ready(ready), .errory(errory),
			.SetCountMax(SetCountMax));

	reg InsideSda;
	always @(*) 
	begin
		case(Sel)
			3'b000: InsideSda = 1'b0;
			3'b001: InsideSda = 1'b1;
			3'b010: InsideSda = Addr_out;
			3'b011: InsideSda = SuBAddrH_out;
			3'b100: InsideSda = SuBAddrL_out;
			3'b101: InsideSda = Data_out;
		endcase 
	end

	bufif0 BF_SDA(SDA, 1'b0, InsideSda);

	wire InsideScl;
	D_tr #(.N(1)) D(.d(~InsideScl), .clk(~I2C_clk), .r(reset), 
			.q(InsideScl), .en(1'b1));

	bufif1 BF_SCL(SCL, InsideScl, SclEn);

endmodule