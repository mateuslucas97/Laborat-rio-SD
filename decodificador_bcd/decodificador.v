//decodificador do display de 7 segmentos de maneira comportamental
module decodificador(A,B,C,D,a,b,c,d,e,f,g);//variaveis de entradas e saidas

input A,B,C,D; //entradas
output a,b,c,d,e,f,g; //saidas

//os resultados foram obtidos via mapa K para cada caso de saida
assign a = ~A & ~B & ~C & D | ~A & B & ~C & ~D;
assign b = B & (C ^D);
assign c = (~A) & (~B) & C & (~D);
assign d = ~A & ~B & ~C & D | B & (C ~^ D);
assign e = ~A & B & ~C | ~C & D | ~A & C & D;
assign f = ~A & ~B & D | ~A & ~B & C | ~A & C &D;
assign g = ~A & ~B & ~C | ~A & B & C &D;
endmodule  