`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:27:44 03/07/2016 
// Design Name: 
// Module Name:    MUX_Selector_Identificador_Dato 
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
module MUX_Selector_Identificador_Dato(input wire selc,input wire[9:0] determinado,referenciacorriente,output wire [9:0] aidentificador
    );
assign aidentificador= (selc)?determinado:referenciacorriente;
endmodule
