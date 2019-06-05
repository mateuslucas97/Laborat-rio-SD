module exercicio(x,y,z,q);

input x,y,z;
output reg q;

reg s,c;

always@(x or y or z) begin
  s = ~x & ~z;
  c = ~z & ~y;
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