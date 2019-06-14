module contador_3bits(CLOCK_50,reset,HEX0);

input CLOCK_50, reset;
output [0:6] HEX0;

reg [2:0] q;
wire 	clock;
	
	initial begin
		q = 3'b000;
		end
		
	divisor_freq dv(clock, reset, CLOCK_50);
		
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
	
	
	decodificador d1(q,HEX0[0:6]);

endmodule
