module registrador(Q0,Q1,Q2,Q3,in,clock, reset); //entradas e saidas do circuito
input in, reset, clock; //as entradas são uma variavel de deslocamento, um reset pra começar e um clock para permitir o deslocamento
output reg Q0,Q1,Q2,Q3; //as saidas são sinais internos que serão deslocados na fbga

//usando o ambiente always em borda de subida do clock e do reset
always @(posedge clock or posedge reset)
	begin
		if(reset) //quando reset está habilitado
		begin	//todas as saidas estão em zero
			Q3 <= 1'b0;
			Q2 <= 1'b0;
			Q1 <= 1'b0;
			Q0 <= 1'b0;
		end
			else	//se não estiver habilitado
			begin   //começa a deslocar um bit de cada vez toda vez que in for habilitada
			Q3 <= in;
			Q2 <= Q3;
			Q1 <= Q2;
			Q0 <= Q1;
			end
	end
	
endmodule
//____
