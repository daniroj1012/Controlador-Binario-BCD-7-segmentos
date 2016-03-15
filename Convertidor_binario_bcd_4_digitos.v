`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:28:25 03/06/2016 
// Design Name: 
// Module Name:    Convertidor_binario_bcd_4_digitos 
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
module Convertidor_binario_bcd_4_digitos(datocorriente,datofrecuencia,unidades,decenas,centenas,millares,seleccion
    );
	 input wire [9:0] datocorriente;
	 input wire [9:0] datofrecuencia;
	 wire[9:0] dato;
	 input seleccion;
	 output reg [3:0] unidades,decenas,centenas,millares;
	 reg [25:0] auxiliar;
	 integer i;
	 assign dato=(seleccion)?datocorriente:datofrecuencia;
	 always @(dato)begin
	 auxiliar[25:10]=0;
	 auxiliar[9:0]=dato;
	 for(i=0;i<10;i=i+1)begin
	      if (auxiliar[13:10] >= 5)
            auxiliar[13:10] = auxiliar[13:10] + 3;
            
         if (auxiliar[17:14] >= 5)
            auxiliar[17:14] = auxiliar[17:14] + 3;
            
         if (auxiliar[21:18] >= 5)
            auxiliar[21:18] = auxiliar[21:18] + 3;
				
			if (auxiliar[25:22] >= 5)
            auxiliar[25:22] = auxiliar[25:22] + 3;
         auxiliar = auxiliar << 1;
	 end
	 unidades= auxiliar[13:10];
	 decenas= auxiliar[17:14];
	 centenas= auxiliar[21:18];
	 millares= auxiliar[25:22];
	 
	 end
endmodule
