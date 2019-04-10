//comparador de um bit usandoa a forma de fluxo de variaveis
module fluxo(S,A,B,C);
//entradas e saidas
input A,B,C;
output S;
//funcao para a saida do circuito
assign S = (~A & ~B & ~C) | (~A & ~B & C) | (A & ~B & C) | (A & B & ~C);

endmodule
