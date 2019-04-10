//descricao da porta OU
module porta_ou(S,A,B,); //S é a variavel de saida e A,B são variaveis de entrada

output S; //declara a saida propriamente dita
input A,B; //declara as entradas propriamente ditas

assign S = A | B; //função para ativar a saida do circuito


endmodule
