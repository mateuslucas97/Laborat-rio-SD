module somador_subtrator_4bits(A,B,TE,HEX0,HEX1);
  
  input [3:0] A,B; //entradas de 4 bits cada
  input TE;//transporte de entrada (soma mais um bit depois do resultado)
  output [0:6] HEX0, HEX1;//saidas que serão mostradas no display de 7 segmetos
  wire[4:0] S, BL; //sinais intermediarios (o resultado da soma bit a bit e o transporte desaida,quando houver excesso de bit)
  wire[0:4] TS;
  wire[4:0] resultado; //resultado da soma propriamete dito, como sinal intermediario
  wire[4:0] uni, dez;  //variaveis intermediarias para separar a casa da unidade e da dezena quando o resultado for maior do que dez
  
//chama em hierarquia para cada bit usando o meio somador(somador_1bit)
//somador_1bit   (X,   Y,   TE,   S,   TS);

//acescetando bit de sinal (0) no numero B 
assign BL[0] = B[0] ^ TE;
assign BL[1] = B[1] ^ TE;
assign BL[2] = B[2] ^ TE;
assign BL[3] = B[3] ^ TE;
//se TE = 0 B_aux = B, então a soma será AL + BL
//se TE = 1 Baux = ~B, então a soma será AL + (-BL)

  somador_1bit b0(A[0],BL[0],TE,S[0],TS[0]);                          
  somador_1bit b1(A[1],BL[1],TS[0],S[1],TS[1]);
  somador_1bit b2(A[2],BL[2],TS[1],S[2],TS[2]);
  somador_1bit b3(A[3],BL[3],TS[2],S[3],TS[3]);
  somador_1bit bitsinal(0,TE,TS[3],S[4],TS[4]);
	
	//concatenamos a ultima posição ds vetores TS e S em uma variavel de resultado
  assign resultado = {S[4],S[3],S[2],S[1],S[0]};
  //quado fizer uma soma cujo resultado é maior do que 10 separamos em duasvariaveis (resto e quociente)
  assign dez = resultado/10; 
  assign uni = resultado%10;
  //com o resto e o quociente prontos, separamos eles em dois displas de 7 segmentos
  decodificador d1(uni,HEX0);
  decodificador d2(dez,HEX1);

endmodule  