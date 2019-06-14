module decodificador(E,S);
 input [2:0]E;
 output reg [0:6]S;
 
 always@(E)
  begin
   case(E)
	3'b000 : S = 7'b0000001;
	3'b001 : S = 7'b1001111;
	3'b010 : S = 7'b0010010;
	3'b011 : S = 7'b0000110;
	3'b100 : S = 7'b1001100;
	3'b101 : S = 7'b0100100;
	3'b110 : S = 7'b0100000;
	3'b111 : S = 7'b0001111;
	
	default : S = 7'b1111111;
	endcase;
	
 end
endmodule
	