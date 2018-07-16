module Com_control(reset, Write, ComEnd, NewCom, clk);
    input clk, ComEnd, NewCom, reset;
    output Write;
    reg Write;
    reg [1:0]state;
    parameter Comreset=0, ComWrite=1, ComWait=2, ComStop=3;
    always@(posedge clk)
       if(reset) begin state=Comreset; Write=0; end
       else case (state)
           2'b00: begin state=ComWrite; Write=1; end
           2'b01: begin state=ComWait; Write=0; end
           2'b10: begin if(ComEnd) 
                             begin state=ComStop; Write=0; end
                        else if(NewCom) 
                                begin state=ComWrite; Write=1; end
                             else 
                                begin state=ComWait; Write=0; end
                    end
           2'b11: begin state = ComStop; Write = 0; end           
       endcase    
endmodule