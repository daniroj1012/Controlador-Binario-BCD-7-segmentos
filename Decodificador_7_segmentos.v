`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:07:25 03/11/2016 
// Design Name: 
// Module Name:    Decodificador_7_segmentos 
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
module Decodificador_7_segmentos(unidades,decenas,centenas,millares,seleccion,CA,CB,CC,CD,CE,CF,CG,CP
    );
input wire [3:0]unidades,decenas,centenas,millares;
input wire [1:0]seleccion;
output reg CA,CB,CC,CD,CE,CF,CG,CP;
reg [3:0] dato;
always@(seleccion or unidades or decenas or centenas or millares)begin 
case(seleccion)
2'b00:dato=unidades;
2'b01:dato=decenas;
2'b10:dato=centenas;
2'b11:dato=millares;
endcase
case(dato)
  4'b0000:
begin  
CA=1 ;
CB=1;
CC=1;
CD=1;
CE=1;
CF=1;
CG=0;
CP=0;
end
  4'b0001:begin 
  CA=0;
  CB=1;
  CC=1;
  CD=0;
  CE=0;
  CF=0;
  CG=0;
  CP=0;
  end
  4'b0010:begin 
  CA=1;
  CB=1;
  CC=0;
  CD=1;
  CE=1;
  CF=0;
  CG=1;
  CP=0;
  end
  4'b0011:begin 
  CA=1;
  CB=1;
  CC=1;
  CD=1;
  CE=0;
  CF=0;
  CG=1;
  CP=0;
  end
  4'b0100:begin 
  CA=0;
  CB=1;
  CC=1;
  CD=0;
  CE=0;
  CF=1;
  CG=1;
  CP=0;
  end
  4'b0101:begin 
  CA=1;
  CB=0;
  CC=1;
  CD=1;
  CE=0;
  CF=1;
  CG=1;
  CP=0;
  end
  4'b0110:begin 
  CA=1;
  CB=0;
  CC=1;
  CD=1;
  CE=1;
  CF=1;
  CG=1;
  CP=0;
  end
  4'b0111:begin 
  CA=1;
  CB=1;
  CC=1;
  CD=0;
  CE=0;
  CF=0;
  CG=0;
  CP=0;
  end
  4'b1000:begin 
  CA=1;
  CB=1;
  CC=1;
  CD=1;
  CE=1;
  CF=1;
  CG=1;
  CP=0;
  end
  4'b1001:begin 
  CA=1;
  CB=1;
  CC=1;
  CD=1;
  CE=0;
  CF=1;
  CG=1;
  CP=0;
  end
  default:begin 
  CA=0;
  CB=0;
  CC=0;
  CD=0;
  CE=0;
  CF=0;
  CG=0;
  CP=0;
  end
endcase
end
endmodule
