//o divisor de frequencia é um simulador de frequencia mais baixa para visualizar melhor a mudança de estados do contador
module divisor_freq(saida,reset,clock);//variaveis de saida e entradas, respectivamente

 input reset,clock; //as entradas são o reset e o clock
 output saida;//a saida é o resultado de todo o processo
	reg [23:0] Q;//a variavel q contém o nº de bits necessários para o divisor ter a frequencia mais baixa
 
	//carregamos o q do zero
 initial
 begin
 Q = 24'b000;
 end
 
 //usamos o ambiente always na borda de subida do clock e do reset
 always @ (posedge clock or posedge reset)
 begin
	 if (reset == 1'b1) //se o reset estiver habilitado
	begin
		Q = 24'b000; //q começa do zero
	end
	
	else
		begin //caso contrário ele começa a contar mais um até chegar no 24º bit
			Q = Q + 1;
		end
end

	//a saida será toda a soma no vetor q
  assign saida = Q[23];
  
endmodule 
