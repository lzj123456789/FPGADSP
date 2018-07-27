module I2C(reset, write, I2C_clk, Addr, SubAddrH, SubAddrL, Data, SDA, SCL, ready, errory);
    input reset, write, I2C_clk;
    input [7:0] Addr, SubAddrH, SubAddrL, Data;
    output ready, errory;
    inout SDA, SCL;
    
    wire [2:0] sel;
    
    wire SclEn, ready, errory, SetCountMax;
    wire LastData; 
    // I2C???
    I2C_Control i1 (.reset(reset), .write(write), .I2C_clk(I2C_clk), .sel(sel), .SclEn(SclEn), .ready(ready), 
                 .errory(errory), .SetCountMax(SetCountMax), .SDA(SDA), .SCL(SCL), .LastData(LastData));
    
    wire [2:0] bit_n;
    //3??????
    sub sub1 (.clk(I2C_clk), .en(~SCL), .s(SetCountMax), .q(bit_n), .LastData(LastData));
    
    reg InsideSda;
    //???????bit_n?
    always@(*)
       begin
          case (sel)
             3'b000: InsideSda = 1'b0;
             3'b001: InsideSda = 1'b1;
             3'b010: InsideSda = Addr[bit_n];
             3'b011: InsideSda = SubAddrH[bit_n];
             3'b100: InsideSda = SubAddrL[bit_n];
             3'b101: InsideSda = Data[bit_n];
           endcase
       end
       
       
    bufif0 b1 (SDA, 1'b0, InsideSda); //???
    wire InsideScl;
    div_2 div (.reset(reset), .clk(~I2C_clk), .clk_2(InsideScl));//???
    bufif1 b2 (SCL, InsideScl, SclEn);//???
    
endmodule