`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:43 03/13/2016 
// Design Name: 
// Module Name:    Maquina_EstadosDisplay 
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
module Maquina_EstadosDisplay(clk,reset,sel,uni,dece,cente,milla
    );
input wire clk,reset;
output reg[1:0]sel;
output reg uni,dece,cente,milla;
reg [1:0] Actual, Siguiente;
parameter S1=2'd0,S2=2'd1,S3=2'd2,S4=2'd3;

always@(posedge clk)begin 
if(reset==1)
Actual<=S1;
else
Actual<=Siguiente;
end
always@(Actual)begin 
case (Actual) 
S1:begin
Siguiente<=S2;
uni<=0;
dece<=1;
cente<=1;
milla<=1;
sel<=Actual;
end
S2:begin
Siguiente<=S3;
uni<=1;
dece<=0;
cente<=1;
milla<=1;
sel<=Actual;
end
S3:begin
Siguiente<=S4;
uni<=1;
dece<=1;
cente<=0;
milla<=1;
sel<=Actual;
end
S4:begin 
Siguiente<=S1;
uni<=1;
dece<=1;
cente<=1;
milla<=0;
sel<=Actual;
end
endcase
end
endmodule
