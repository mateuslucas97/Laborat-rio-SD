/* comparador de 1bit com habilita */
module comp1bit(A,B,HAB,IG,MA,ME);
//entradas e saidas respectivas
input A,B,HAB;
output IG,MA,ME;
//funcoes de saidas para cada variavel de saida
assign IG = HAB & (A ~^ B);
assign MA = HAB & (A & (~B));
assign ME = HAB & ((~A) & B);

endmodule
