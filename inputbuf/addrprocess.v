module addrprocess(sys_clk, FirStart, RisingTone, reset, InCopy, OutBufwea, ready, 
FirInSel, ProcessStart, InBufAddra, InBufAddrb, InCopyEnd);
    parameter I=3;
    parameter D=4;
    parameter addr_bits=2;
    
    input sys_clk, FirStart, RisingTone, reset, InCopy, OutBufwea, ready;
    output ProcessStart, InCopyEnd;
    output [9:0] InBufAddra, InBufAddrb;
    output [1:0] FirInSel;
    
    wire [1:0] FirInSel;
    wire [9:0] InBufAddra;
    wire [9:0] InBufAddrb;
   
    wire [1:0] dataaddr_1;
    wire [9:0] dataaddr_2;
    FirAddr Firaddr (.clk(sys_clk), .mode(RisingTone), .en(OutBufwea), .r(ProcessStart), 
                     .data1(dataaddr_1), .data2(dataaddr_2));
                     
    wire co_I;
    counterL_m #(.counter_bits(2)) 
                c1(.mode(RisingTone), .clk(sys_clk), .en(1'b1), .r(reset), 
                   .q(FirInSel), .co(co_I), .load(FirStart), .din(dataaddr_1));
    
    wire [9:0] sig4;            
    counterL #(.n(10'h3ff), .counter_bits(10), .setnum(10'h000)) 
                c2(.clk(sys_clk), .en(co_I), .r(reset), 
                   .q(sig4), .co(), .load(FirStart), .din(dataaddr_2));
    
    wire [9:0] sig5;           
    counterL #(.n(10'h314), .counter_bits(10), .setnum(10'h015)) 
                c3(.clk(sys_clk), .en(ready), .r(1'b0), 
                   .q(sig5), .co(), .load(reset), .din(10'h015));
    
    wire [4:0] sig6;           
    counterL #(.n(5'h15), .counter_bits(5), .setnum(5'h0)) 
                c4(.clk(sys_clk), .en(InCopy), .r(reset), 
                   .q(sig6), .co(InCopyEnd), .load(1'b0), .din(5'h0));
    
    wire [4:0] sig7;               
    dffre #(.WIDTH(5)) 
                d1(.d(sig6), .en(1'b1), .r(1'b0), .clk(sys_clk), .q(sig7));
                
    wire [9:0] sig8; 
    full_adder #(.N(10)) a1 (.r(reset), .a({5'b0,sig6}), .b(10'h300), .s(sig8), .ci(1'b0), .co());
    
    assign InBufAddrb = InCopy? sig8:sig4;
    assign InBufAddra = InCopy? {5'b0,sig7}:sig5;
    assign ProcessStart = (sig5==779)&&ready;
      
endmodule