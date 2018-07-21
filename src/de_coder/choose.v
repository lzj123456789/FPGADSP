module choose(Data_in, bit_n, Data_out);
	input[7:0] Data_in;
	input[2:0] bit_n;
	output Data_out;

	reg Data_out;
	always @(*) 
	begin
		case(bit_n)
			3'b000: Data_out = Data_in[0];
			3'b001: Data_out = Data_in[1];
			3'b010: Data_out = Data_in[2];
			3'b011: Data_out = Data_in[3];
			3'b100: Data_out = Data_in[4];
			3'b101: Data_out = Data_in[5];
			3'b110: Data_out = Data_in[6];
			3'b111: Data_out = Data_in[7];
		endcase
	end
endmodule