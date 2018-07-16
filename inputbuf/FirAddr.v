module FirAddr(clk, mode, en, r, data1, data2);
    input clk,mode,en,r;
    output [1:0] data1;
    output [9:0] data2;
    
    wire [1:0]q1;
    wire [9:0]q2;
    reg [1:0]data1;
    reg [9:0]data2;
    
    reg [2:0] I, D;
    always@(*)
       begin
           if(mode) begin  I = 3; D = 4; end
           else begin  I = 4; D = 3; end
       end
    
    Iadder1 a1(.I(I), .clk(clk), .en(en), .a(D),.b(q1), .s(q1), .ci(1'b0), .co(co1));
    full_adder #(.N(10)) a3(.a(10'b0), .b(q2), .s(q2), .ci(co1), .co());
    
    always@(posedge clk)
       begin
           if(r) begin data1 = 2'b0; data2 = 10'b0; end
           else 
                begin
                    data1 = q1;
                    data2 = q2;
                end
        end
endmodule