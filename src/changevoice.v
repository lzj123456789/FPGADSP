module	changevoice(SampleIn,ready,clk,RisingTone,reset,SampleOut);
	input [15:0] SampleIn;
	input ready,clk,reset,RisingTone;
	output [15:0] SampleOut;
	wire InCopy,OutBufWea,FirStart,FirOe,InCopyEnd,
		ProcessStart,FirEnd,ProcessEnd;
	wire [1:0] FirInSel;
	wire [9:0] InBufAddra,InBufAddrb;
	
	//地址处理模块
	addrprocess inputaddr(
		//input
		.sys_clk(clk),.InCopy(InCopy),.ready(ready),.RisingTone(RisingTone),
		.FirStart(FirStart),.reset(reset),.OutBufwea(OutBufWea),
		//output
		.InBufAddra(InBufAddra),.InBufAddrb(InBufAddrb),.FirInSel(FirInSel),
		.InCopyEnd(InCopyEnd),.ProcessStart(ProcessStart)
		);
	wire [15:0] xin,qdpo;
		
	//InBuf
	InOutBuffer InOutBuf(
		.d(InCopy?qdpo:SampleIn),.we(InCopy||ready),.a(InBufAddra),
		.clk(clk),.dpra(InBufAddrb),.qdpo(qdpo)
		);
	
	assign	xin = (FirInSel[1]? 16'b0: (FirInSel[0]? 16'b0:qdpo));
 	
	wire[15:0] Outd;
	//Fir
	fir_L Fir(
		//input
		.clk(clk),.reset(FirStart),.x(xin),.RisingTone(RisingTone),.en(FirOe),
		//output
		.FirEnd(FirEnd),.y(Outd)
		);
		
	//控制器进行信号控制
	control control(
		//input
		.IncopyEnd(InCopyEnd),.reset(reset),.FirEnd(FirEnd),.ProcessEnd(ProcessEnd),
		.clk(clk),.ProcessStart(ProcessStart),.ready(ready),
		//output
		.FirStart(FirStart),.OutBufWea(OutBufWea),.Incopy(InCopy),.FirOe(FirOe)
		);
	
	wire[9:0] Out_a_1, Out_a_2, Out_a;
	wire ProcessEnd_1, ProcessEnd_2;
	
	//1024/576计数器
	counterT #(.n(10'h3ff), .counter_bits(10))
		counter2_1(
		.r(ProcessStart), .clk(clk), .q(Out_a_1), 
		.co(ProcessEnd_1), .en(OutBufWea)
		);

	counterT #(.n(10'h23f), .counter_bits(10))
		counter2_2(
		.r(ProcessStart), .clk(clk), .q(Out_a_2), 
		.co(ProcessEnd_2), .en(OutBufWea)
		);
	
	assign Out_a = (~RisingTone)? Out_a_1:Out_a_2;
	assign ProcessEnd = (~RisingTone)? ProcessEnd_1:ProcessEnd_2;
	
			
	//平滑滤波
	smoothFilter smoothFilter(
		.RisingTone(RisingTone),.sys_clk(clk),.ready(ready),
		.reset(reset),.Outa(Out_a),.Outd(Outd),.OutBufWea(OutBufWea),.SampleOut(SampleOut)
		);
		
endmodule