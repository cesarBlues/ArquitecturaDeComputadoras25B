`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Universidad de Guadalajara
// Engineer: Cesar David Amezcua Narajo
// 
// Create Date:    23:40:12 08/27/2025 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [7:0] a,
    input [7:0] b,
    input [1:0] op,  // Selector de operacion
    output reg [7:0] c
);

// Definicion de los códigos de operación
parameter ADD = 2'b00;
parameter AND = 2'b01;

always @(*) begin
    case(op)
        ADD: c = a + b;      // Suma
        AND: c = a & b;      // AND bitwise
        default: c = 8'b0;   // Por defecto, salida 0
    endcase
end

endmodule
