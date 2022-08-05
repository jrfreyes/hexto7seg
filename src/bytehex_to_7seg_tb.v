`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:27:50 08/04/2022
// Design Name:   bytehex_to_7seg
// Module Name:   Z:/SharedFolder/CPE110L/DoE/HexTo7Seg/bytehex_to_7seg_tb.v
// Project Name:  HexTo7Seg
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bytehex_to_7seg
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bytehex_to_7seg_tb;

	// Inputs
	reg [7:0] a;

	// Outputs
	wire [0:7] d1;
	wire [0:7] d0;
	
	// Instantiate the Unit Under Test (UUT)
	bytehex_to_7seg uut (
		.a(a), 
		.d1(d1), 
		.d0(d0)
	);

	initial begin
		// Initialize Inputs
		$monitor("t=%d a=%2h d1=%8b d0=%8b", $time, a, d1, d0);
		a = 8'h00; #100;
       
		// Add stimulus here
		for (a=0; a<256; a=a+1)
			#100;
		
	end
      
endmodule

