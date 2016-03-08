`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:47:09 03/07/2016 
// Design Name: 
// Module Name:    Determina_Frecuencia 
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
module Determina_Frecuencia(input wire[10:0] adivisor,output reg[9:0] determinado
    );
always @(adivisor)
case(adivisor)
11'b11010000010:determinado=10'd30;
11'b01111100111:determinado=10'd50;
11'b01010011010:determinado=10'd75;
11'b00111110011:determinado=10'd100;
11'b00110001111:determinado=10'd125;
11'b00101001101:determinado=10'd150;
11'b00100011101:determinado=10'd175;
11'b00011111001:determinado=10'd200;
default :determinado=10'd0;
endcase
endmodule
