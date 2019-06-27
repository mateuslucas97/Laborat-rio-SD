module contador_3bits(CLOCK_50,reset,HEX0);//entradas e saidas do circuito

input CLOCK_50, reset; //entradas (CLOCK_50 é um nome reservado pelo quartus, ou seja, já faz a pinagem automaticamente
output [0:6] HEX0;//saida do circuito, HEX0  também é nome reservado pelo quartus

reg [2:0] q;//sinal interno para mudança de estados (aqui são 3 bits, que é a entrada do circuito)
wire 	clock;//fio que vai concetar o clock do divisor de frequenci aqui
	
	//começa q com zero
	initial begin
		q = 3'b000;
		end
	
	//chamada do modulo divisor de frequencia aplicado nas variaveis deste arquivo
	divisor_freq dv(clock, reset, CLOCK_50);
	
	//mesmo esquema do divisor de frequencia
	always @(posedge clock or posedge reset)
	begin
		if(reset == 1'b1)
		begin
			q = 3'b000;
			end
			
		else
		begin
		q = q + 1;
		end
	end
	
	//a saida vai aparecer no decodificador levando em consideração a variavel interna q
	decodificador d1(q,HEX0[0:6]);

endmodule
