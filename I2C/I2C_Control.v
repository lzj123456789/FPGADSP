module I2C_Control(reset, write, I2C_clk, sel, SclEn, ready, errory, SetCountMax, SDA, SCL, LastData);
    input reset, write, I2C_clk, SDA, SCL, LastData;
    output SclEn, ready, errory, SetCountMax;
    output [2:0]sel;
    parameter  IDLE=4'b0000, Start=4'b0001, Startbit=4'b0010, 
               AddrWR=4'b0011, AckAddrWR=4'b0100, SubAddrHWR=4'b0101, 
               AckAddrHWR=4'b0110, SubAddrLWR=4'b0111, AckAddrLWR=4'b1000, 
               DataWR=4'b1001, AckDataWR=4'b1010, Stop=4'b1011, 
               Ready=4'b1100, Err=4'b1101;
    reg [3:0] state;      
    reg [3:0] n_state;
    reg SclEn, ready, errory, SetCountMax;
    reg [2:0] sel;
    always@(posedge I2C_clk)
        begin
            if(reset) state=IDLE;
            else state=n_state;
		  end
    always@(*)
        begin
		   case(state)
			IDLE:
				begin
					sel = 1; SclEn = 0; SetCountMax = 0;
					ready = 0; errory = 0;
					if (write)
						n_state <= Start;
					else 
						n_state <= IDLE;
				end
			Start:
				begin
					sel = 1; SclEn = 1; SetCountMax = 0;
					ready = 0; errory = 0;
					if (SCL)
						n_state <= Startbit;
					else 
						n_state <= Start;
				end
			Startbit:
				begin
					sel = 0; SclEn = 1; SetCountMax = 1;
					ready = 0; errory = 0;
					n_state<=AddrWR;
				end
			AddrWR:
				begin
					sel = 2; SclEn = 1; SetCountMax = 0;
					ready = 0; errory = 0;
					if ((~SCL)&&LastData)
						n_state <= AckAddrWR;
					else
						n_state <= AddrWR;
				end
			AckAddrWR:
				begin
					sel = 1; SclEn = 1; SetCountMax = 1;
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
					sel = 3; SclEn = 1; SetCountMax = 0;
					ready = 0; errory = 0;
					if ((~SCL)&&LastData)
						n_state <= AckAddrHWR;
					else 
						n_state <= SubAddrHWR;
				end
			AckAddrHWR:
				begin
					sel = 1; SclEn = 1; SetCountMax = 1;
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
					sel = 4; SclEn = 1; SetCountMax = 0;
					ready = 0; errory = 0;
					if ((~SCL)&&LastData)
						n_state <= AckAddrLWR;
					else
						n_state <= SubAddrLWR;
				end
			AckAddrLWR:
				begin
					sel = 1; SclEn = 1; SetCountMax = 1;
					ready = 0; errory = 0;
					if (~SCL)
						n_state <= DataWR;
					else if (SDA)
						n_state <= Err;
					else
						n_state <= AckAddrLWR; 
				end
			DataWR:
				begin
					sel = 5; SclEn = 1; SetCountMax = 0;
					ready = 0; errory = 0;
					if ((~SCL)&&LastData)
						n_state <= AckDataWR;
					else 
						n_state <= DataWR;
				end
			AckDataWR:
				begin
					sel = 1; SclEn = 1; SetCountMax = 1;
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
					sel = 0; SclEn = 0; SetCountMax = 1;
					ready = 0; errory = 0;
					n_state <= Ready;
				end
			Ready:
				begin
					sel = 1; SclEn = 0; SetCountMax = 1;
					ready = 1; errory = 0;
					n_state <= IDLE;
				end
			default:
				begin
					sel = 0; SclEn = 0; SetCountMax = 0;
					ready = 0; errory = 1;
				end
		   endcase
      end
endmodule