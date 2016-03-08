`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:56:34 03/06/2016 
// Design Name: 
// Module Name:    deco_7_segmentos 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module deco_7_segmentos(codigo,display
    );
input wire [3:0] codigo;
output reg [6:0] display;
always @(codigo) begin
case (codigo)       
  4'b0000: display = 7'b1111110;
  4'b0001: display = 7'b0110000;
  4'b0010: display = 7'b1101101;
  4'b0011: display = 7'b1111001;
  4'b0100: display = 7'b0110011;
  4'b0101: display = 7'b1011011;
  4'b0110: display = 7'b1011111;
  4'b0111: display = 7'b1110000;
  4'b1000: display = 7'b1111111;
  4'b1001: display = 7'b1111011;
  default: display = 7'b0000000;
endcase
end
endmodule
