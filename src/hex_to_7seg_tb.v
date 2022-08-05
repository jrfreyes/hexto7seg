`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:07:42 08/04/2022
// Design Name:   hex_to_7seg
// Module Name:   Z:/SharedFolder/CPE110L/DoE/HexTo7Seg/hex_to_7seg_tb.v
// Project Name:  HexTo7Seg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hex_to_7seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module hex_to_7seg_tb;

	// Inputs
	reg [3:0] a;

	// Outputs
	wire [0:7] d;

	// Instantiate the Unit Under Test (UUT)
	hex_to_7seg uut (
		.a(a), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		$monitor("t=%d a=%h d=%b", $time, a, d);
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(a = 0; a < 16; a=a+1) #100;
	end
endmodule