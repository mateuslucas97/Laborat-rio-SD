//modulo para comparar 4 bits de um em um
module comp4bits(X,Y,igual,maior,menor);
//as entradas sao dois vetores de 4 bits
input [3:0] X, Y;
//saidas para cada caso
output igual,maior,menor;

//variaveis intermediarias
wire [3:0] aux_ig, aux_ma, aux_me;

//sera chamada o modulo auxiliar para comparar cada bit do vetor
//comp1bit   (A,     B,   HAB,       IG,        MA,        ME);

  comp1bit b3(X[3], Y[3], 1,         aux_ig[3], aux_ma[3], aux_me[3]);
  comp1bit b2(X[2], Y[2], aux_ig[3], aux_ig[2], aux_ma[2], aux_me[2]);
  comp1bit b1(X[1], Y[1], aux_ig[2], aux_ig[1], aux_ma[1], aux_me[1]);
  comp1bit b0(X[0], Y[0], aux_ig[1], aux_ig[0], aux_ma[0], aux_me[0]);
//para as saidas deve ser comparado a variavel de entrada com a variavel intermediaria  
  assign igual = aux_ig[0];
  assign maior = | aux_ma;
  assign menor = | aux_me; 
endmodule
