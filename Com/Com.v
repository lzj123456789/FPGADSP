module Com(I2C_clk, NewCom, reset, SubAddrL, data, Write);
    input I2C_clk, NewCom, reset;
    output Write;
    output [7:0] SubAddrL, data;
    
    wire ComEnd;
    wire [4:0] Com;
    counterT #(.n(32), .counter_bits(5)) 
              counter(.clk(I2C_clk), .en(NewCom), .r(reset), .q(Com), .co(ComEnd));
              
    Com_control c1(.reset(reset), .Write(Write), .ComEnd(ComEnd), .NewCom(NewCom), .clk(I2C_clk));
    
    wire [15:0] Com_out;
    decoder5_16 d1 (.in(Com), .out(Com_out));
    assign data = Com_out[7:0];
    assign SubAddrL = Com_out[15:8];
             
    
    
endmodule