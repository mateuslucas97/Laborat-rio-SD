//descricao da porta OU
module porta_ou(S,A,B,); //S � a variavel de saida e A,B s�o variaveis de entrada

output S; //declara a saida propriamente dita
input A,B; //declara as entradas propriamente ditas

assign S = A | B; //fun��o para ativar a saida do circuito


endmodule
