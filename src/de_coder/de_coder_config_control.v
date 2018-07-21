module de_coder_config_control(reset,write,clk,SCL,SDA, LastData, 
	SdaSel,SclEn,ready,errory,SetCountMax);

	input reset, write, clk, SCL, SDA, LastData;
	output SclEn, ready, errory, SetCountMax;
	output[2:0] SdaSel;

	parameter[3:0] IDLE = 4'b0000, Start = 4'b0001, Startbit = 4'b0010,
		AddrWR = 4'b0011, AckAddrWR = 4'b0100, SubAddrHWR = 4'b0101,
		AckAddrHWR = 4'b0110, SubAddrLWR = 4'b0111, AckbAddrLWR = 4'b1000,
		DataWR = 4'b1001, AckDataWR = 4'b1010, Stop = 4'b1011, 
		Ready = 4'b1100, Err = 4'b1101;

	reg[3:0] state, n_state;
	reg SclEn, ready, errory, SetCountMax;
	reg[2:0] SdaSel;

	always @(posedge clk) 
	begin
		if(reset)
			state <= IDLE;
		else
			state <= n_state;
	 end 

	always @(*) 
	begin
		case(state)
			IDLE:
				begin
					SdaSel = 1; SclEn = 0; SetCountMax = 0;
					ready = 0; errory = 0;
					if (write)
						n_state <= Start;
					else 
						n_state <= IDLE;
				end
			Start:
				begin
					SdaSel = 1; SclEn = 1; SetCountMax = 0;
					ready = 0; errory = 0;
					if (SCL)
						n_state <= Startbit;
					else 
						n_state <= Start;
				end
			Startbit:
				begin
					SdaSel = 0; SclEn = 1; SetCountMax = 1;
					ready = 0; errory = 0;
					n_state<=AddrWR;
				end
			AddrWR:
				begin
					SdaSel = 2; SclEn = 1; SetCountMax = 0;
					ready = 0; errory = 0;
					if ((~SCL)&&LastData)
						n_state <= AckAddrWR;
					else
						n_state <= AddrWR;
				end
			AckAddrWR:
				begin
					SdaSel = 1; SclEn = 1; SetCountMax = 1;
					ready = 0; errory = 0;
					if (~SCL)
						n_state <= SubAddrHWR;
					else if (SDA)
						n_state <= Err;
					else
						n_state <= AckAddrWR;
				end
			SubAddrHWR:
				begin
					SdaSel = 3; SclEn = 1; SetCountMax = 0;
					ready = 0; errory = 0;
					if ((~SCL)&&LastData)
						n_state <= AckAddrHWR;
					else 
						n_state <= SubAddrHWR;
				end
			AckAddrHWR:
				begin
					SdaSel = 1; SclEn = 1; SetCountMax = 1;
					ready = 0; errory = 0;
					if (~SCL)
						n_state <= SubAddrLWR;
					else if (SDA)
						n_state <= Err;
					else 
						n_state <= AckAddrHWR;
				end
			SubAddrLWR:
				begin
					SdaSel = 4; SclEn = 1; SetCountMax = 0;
					ready = 0; errory = 0;
					if ((~SCL)&&LastData)
						n_state <= AckbAddrLWR;
					else
						n_state <= SubAddrLWR;
				end
			AckbAddrLWR:
				begin
					SdaSel = 1; SclEn = 1; SetCountMax = 1;
					ready = 0; errory = 0;
					if (~SCL)
						n_state <= DataWR;
					else if (SDA)
						n_state <= Err;
					else
						n_state <= AckbAddrLWR; 
				end
			DataWR:
				begin
					SdaSel = 5; SclEn = 1; SetCountMax = 0;
					ready = 0; errory = 0;
					if ((~SCL)&&LastData)
						n_state <= AckDataWR;
					else 
						n_state <= DataWR;
				end
			AckDataWR:
				begin
					SdaSel = 1; SclEn = 1; SetCountMax = 1;
					ready = 0; errory = 0;
					if (~SCL)
						n_state <= Stop;
					else if (SDA)
						n_state <= Err;
					else
						n_state <= AckDataWR;
				end
			Stop:
				begin
					SdaSel = 0; SclEn = 0; SetCountMax = 1;
					ready = 0; errory = 0;
					n_state <= Ready;
				end
			Ready:
				begin
					SdaSel = 1; SclEn = 0; SetCountMax = 1;
					ready = 1; errory = 0;
					n_state <= IDLE;
				end
			Err:
				begin
					SdaSel = 0; SclEn = 0; SetCountMax = 0;
					ready = 0; errory = 1;
				end
		endcase
	end

endmodule 