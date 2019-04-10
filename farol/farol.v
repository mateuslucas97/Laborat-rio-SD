//porjeto de um farol de carro
module farol(F,M,buzzer);//F,M são entradas e BUZZER é a saida
//delcaracao das entradas e saida
input F,M;
output buzzer;
//funcao de  saida do circuito
assign buzzer = F & (~M);

endmodule
