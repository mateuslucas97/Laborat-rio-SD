module decodificador(E,S);
input [0:3]E;
output reg[0:6]S;

always@(E) //ambiente always
  begin
   case(E) //concatena todas as posiçoes do vetor
        //cada caso é apresentado como se fosse a tabela verdade
	4'b0000 : S = 7'b0000001;
	4'b0001 : S = 7'b1001111;
	4'b0010 : S = 7'b0010010;
	4'b0011 : S = 7'b0000110;
	4'b0100 : S = 7'b1001100;
	4'b0101 : S = 7'b0100100;
	4'b0110 : S = 7'b0100000;
	4'b0111 : S = 7'b0001111;
	4'b1000 : S = 7'b0000000;
	4'b1001 : S = 7'b0000100;
	default : S = 7'b1111111;
	endcase; //fim do case
	
 end // fim do always

endmodule