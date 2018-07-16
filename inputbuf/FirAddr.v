module FirAddr(clk, mode, en, r, data1, data2);
    input clk,mode,en,r;
    output [1:0] data1;
    output [9:0] data2;
    reg [1:0]co;
    reg [1:0]data1;
    reg [9:0]data2;
    
    always@(posedge clk)
       begin
           if(r) begin data1 = 2'b0; data2 = 10'b0; end
           else if(en)
              begin
                if(mode)
                    begin
                        case(data1)
                            2'b00: begin data1 = 2'b01; co = 1; end
				                2'b01: begin data1 = 2'b10; co = 1; end
				                2'b10: begin data1 = 2'b00; co = 2; end
				            endcase
				         end
				    else
				        begin
				            case(data1)
				                2'b00: begin data1 = 2'b11; co = 0; end
				                2'b01: begin data1 = 2'b00; co = 1; end
				                2'b10: begin data1 = 2'b01; co = 1; end
				                2'b11: begin data1 = 2'b10; co = 1; end
				            endcase		
				        end	
				    data2 = data2 + co;
				  end 
        end
endmodule