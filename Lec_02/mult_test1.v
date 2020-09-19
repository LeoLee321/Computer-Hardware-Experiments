`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:34:59 02/26/2016
// Design Name:   mult
// Module Name:   C:/Documents and Settings/Student/Desktop/Examples/multiply/mult_test1.v
// Project Name:  multiply
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mult
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mult_test1;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg clk;

	// Outputs
	wire [31:0] P;

	// Instantiate the Unit Under Test (UUT)
	mult uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.P(P)
	);
	
	always begin
	#10;
	clk = 0;
	#10;
	clk = 1;
	end

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A = 2;
		B = 3;

		#100;
		A = 4;
		B = 5;
		
		#100;
		A = 6;
		B = 7;
        
		// Add stimulus here

	end
      
endmodule

