module decodificarovetor(E, HEX0,HEX1,HEX2);

input [3:0]E;
output reg [0:6]HEX0;
output reg [0:6]HEX1;
output reg [0:6]HEX2;

always@(*)
begin

case(E)
/*
4'b0000: HEX = 7'b0000001;//0
//1 
4'b0001: HEX = 7'b1001111;
//2
4'b0010: HEX = 7'b0010010;
//3
4'b0011: HEX = 7'b0000110;
//4
4'b0100: HEX = 7'b1001100;
//5
4'b0101: HEX = 7'b0100100;
//6
4'b0110: HEX = 7'b0100000;
//7
4'b0111: HEX = 7'b0001111;
//8
4'b1000: HEX = 7'b0000000;
//9
4'b1001: HEX = 7'b0000100;
default; HEX = 7'b1111101;
*/
4'b1000: HEX2 = 7'b0100000;
4'b1100: 
begin
HEX2 = 7'b0100000;
HEX1 = 7'b1001111;
end
4'b1110: 
begin
HEX2 = 7'b0100010;
HEX1 = 7'b1001111;
HEX0 = 7'b0000001;
end
endcase
end


endmodule
