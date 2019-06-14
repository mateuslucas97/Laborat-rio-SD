module divisor_freq(saida,reset,clock);

 input reset,clock;
 output saida;
 reg [23:0] Q;
 
 initial
 begin
 Q = 24'b000;
 end
 
 always @ (posedge clock or posedge reset)
 begin
	if (reset == 1'b1)
	begin
		Q = 24'b000;
	end
	
	else
		begin
			Q = Q + 1;
		end
end

  assign saida = Q[23];
  
endmodule 