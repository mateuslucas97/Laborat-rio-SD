module somador1bit(X, Y, TE, HEX0);
input X, Y, TE;
output [0:6]HEX0;


//    Te = 0;
//    funcao(X, Y, TE);
//  endmodule
//
// module funcao(X, Y, TE);
// input X, Y, Te;
wire S, TS; 
wire [3:0]E;
 
    assign S = ((X)^(Y)^(TE));
    assign TS = ((X&Y)|(X&TE)|(Y&TE));
    
    assign E[3] = 0;
    assign E[2] = 0;
    assign E[1] = TS;
    assign E[0] = S;
    
    decodificarovetor(E, HEX0);

endmodule
