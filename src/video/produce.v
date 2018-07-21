module Produce(BitCount, LRCLK,enl,enr,ld,NewFrame);
    input wire[4:0] BitCount;
    input LRCLK;
    output enl, enr, ld, NewFrame;
    reg enl, enr, ld, NewFrame;
    always@(*)
       begin
          ld = ~(|BitCount);
          enl = ~LRCLK&&BitCount[0]&&~BitCount[1]&&~BitCount[2]&&BitCount[3]&&BitCount[4];
          enr = LRCLK&&BitCount[0]&&~BitCount[1]&&~BitCount[2]&&BitCount[3]&&BitCount[4];
          NewFrame = LRCLK&&~BitCount[0]&&BitCount[1]&&~BitCount[2]&&BitCount[3]&&BitCount[4];
       end
endmodule    