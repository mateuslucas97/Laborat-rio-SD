//um flip flop tipo t (toggle)
module exercicio(clock,q);

//entradas e saidas padr�o
input clock;
output reg q;

//variaveis intermedi�rias, entrdas do FF
reg s,c;

//come�� com Q = 0
initial begin
  q=0;
end

//ambiente always com um clock borda de descida
always@( negedge clock) begin
  
  //neste caso as saidas do FF s�o conectadas na entrada
  s = ~q;
  c = q;
  //come�a a fazer a an�lise de acordo com a tabela do FF tipo RS
  if(s == 0 & c == 0) begin
    q = q;
  end 

  if(s == 1 & c == 0) begin
    q = 1;
  end

  if(s == 0 & c == 1) begin
    q = 0;
  end
  if (s==1 & c==1)begin
    q=1'bx;
    end
end


endmodule