`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:43:12 03/12/2016 
// Design Name: 
// Module Name:    Decodificador_Corriente_Frecuencia 
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
module Decodificador_Corriente_Frecuencia(corriente,frecuencia,modo,seleccion,CA,CB,CC,CD,CE,CF,CG,CP
    );
input wire modo;
input wire [9:0]corriente;
input wire[10:0]frecuencia;
input wire[1:0] seleccion;
output CA,CB,CC,CD,CE,CF,CG,CP;
wire [3:0]unidades,decenas,centenas,millares;
wire [9:0] determinado;
Determina_Frecuencia vinculafrecuencia (
    .adivisor(frecuencia), 
    .determinado(determinado)
    );
	 
	 Convertidor_binario_bcd_4_digitos binarioabcd (
    .datocorriente(corriente), 
    .datofrecuencia(determinado), 
    .unidades(unidades), 
    .decenas(decenas), 
    .centenas(centenas), 
    .millares(millares), 
    .seleccion(modo)
    );

Decodificador_7_segmentos deco (
    .unidades(unidades), 
    .decenas(decenas), 
    .centenas(centenas), 
    .millares(millares), 
    .seleccion(seleccion), 
    .CA(CA), 
    .CB(CB), 
    .CC(CC), 
    .CD(CD), 
    .CE(CE), 
    .CF(CF), 
    .CG(CG), 
    .CP(CP)
    );

endmodule
