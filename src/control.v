module control(ready,IncopyEnd,ProcessStart,reset,FirEnd,ProcessEnd,clk,
	FirStart,FirOe,OutBufWea,Incopy);

	input IncopyEnd,ProcessStart,reset,FirEnd,ProcessEnd,clk,ready;
	output FirStart,FirOe,OutBufWea,Incopy;
	
	reg FirStart,FirOe,OutBufWea,Incopy;
	reg[2:0] state,nextstate;
	
	parameter Wait = 3'b000,FirReset = 3'b001,MAC = 3'b010,DataOut = 3'b011,
		RAMWrite = 3'b100,CopyWait = 3'b101,Copy = 3'b110;
		
	//二段式进行状态变换
	always @(posedge clk)
	begin
		if(reset)
			state <= Wait;
		else begin 
			state <= nextstate;
		end
	end
	
	always @(*)
	begin 
		case(state)
			Wait:
				begin
					FirStart <= 0;FirOe <= 0;OutBufWea <= 0;Incopy <= 0;
					if(ProcessStart)
						nextstate <= FirReset;
					else 
						nextstate <= Wait;
				end
			
			FirReset:
				begin
					FirStart <= 1;FirOe <= 0;OutBufWea <= 0;Incopy <= 0;
					nextstate <= MAC;
				end
				
			MAC:
				begin
					FirStart <= 0;FirOe <= 0;OutBufWea <= 0;Incopy <= 0;
					if(FirEnd)
						nextstate <= DataOut;
					else 
						nextstate <= MAC;
				end
			
			DataOut:
				begin
					FirStart <= 0;FirOe <= 1;OutBufWea <= 0;Incopy <= 0;
					nextstate <= RAMWrite;
				end
				
			RAMWrite:
				begin
					FirStart <= 0;FirOe <= 0;OutBufWea <= 1;Incopy <= 0;
					if(ProcessEnd)
						nextstate <= CopyWait;
					else 
						nextstate <= FirReset;
				end
				
			CopyWait:
				begin
					FirStart <= 0;FirOe <= 0;OutBufWea <= 0;Incopy <= 0;
					if(ready)
						nextstate <= Copy;
					else 
						nextstate <= CopyWait;
				end
				
			Copy:
				begin
					FirStart <= 0;FirOe <= 1;OutBufWea <= 0;Incopy <= 1;
					if(IncopyEnd)
						nextstate <= Wait;
					else 
						nextstate <= Copy;
				end
					 
			default:
				begin
					FirStart <= 0;FirOe <= 0;OutBufWea <= 0;Incopy <= 0;
					nextstate <= Wait;
				end	
				
		endcase
	end
	
endmodule	
			