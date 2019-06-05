module exercicio(clock,q);

input clock;
output reg q;

reg d;

initial begin
  q=0;
end

always@( posedge clock) begin

 d=~q; 
 q=d;
 
end

endmodule