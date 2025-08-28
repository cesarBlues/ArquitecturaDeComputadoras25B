`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:45:36 08/27/2025
// Design Name:   alu
// Module Name:   /home/davsm/aluAndSuma/alu_tb.v
// Project Name:  aluAndSuma
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg [1:0] op;

	// Outputs
	wire [7:0] c;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.a(a), 
		.b(b), 
		.op(op), 
		.c(c)
	);

	initial begin

		  // Test 1: 8 + 6 = 14
        a = 8; b = 6; op = 2'b00; // ADD
        #100;
        
        // Test 2: 8 AND 6 = 0
        a = 8; b = 6; op = 2'b01; // AND
        #100;
        
        // Test 3: 3 + 2 = 5
        a = 3; b = 2; op = 2'b00; // ADD
        #100;
        
        // Test 4: 3 AND 2 = 2
        a = 3; b = 2; op = 2'b01; // AND
        #100;
        
        // Test 5: 1 + 1 = 2
        a = 1; b = 1; op = 2'b00; // ADD
        #100;
        
        // Test 6: 1 AND 1 = 1
        a = 1; b = 1; op = 2'b01; // AND
        #100;
        
        // Test 7: 1 + 5 = 6
        a = 1; b = 5; op = 2'b00; // ADD
        #100;
        
        // Test 8: 1 AND 5 = 1
        a = 1; b = 5; op = 2'b01; // AND
        #100;
        
        // Test 9: 10 + 2 = 12
        a = 10; b = 2; op = 2'b00; // ADD
        #100;
        
        // Test 10: 10 AND 2 = 2
        a = 10; b = 2; op = 2'b01; // AND
        #100;

	end
      
endmodule

