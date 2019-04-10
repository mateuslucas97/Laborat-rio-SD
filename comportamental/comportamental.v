//circuito que compara 3 bits
module comportamental(A,B,C, S);
//variaveis de entrada
input A,B,C;
//quando se usa o always deve usar a saida do tipo reg
output reg S;
//always é uma repeticao alternativa em verilog
  always @(A or B or C)
  begin 
    //concatenacao de variaveis
    case ({A,B,C})
         //analisa cada caso e atribui uma saida desejada
         //como se fosse a tabela-verdade
	 3'b000 : S = 1'b1;
	 3'b001 : S = 1'b1;
	 3'b010 : S = 1'b0;
	 3'b011 : S = 1'b0;
	 3'b100 : S = 1'b0;
	 3'b101 : S = 1'b1;
	 3'b110 : S = 1'b1;
	 3'b111 : S = 1'b0;
	 endcase
	end
endmodule
