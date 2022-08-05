`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:25:21 08/04/2022 
// Design Name: 
// Module Name:    bytehex_to_7seg 
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
module bytehex_to_7seg(
    input [7:0] a,
    output [0:7] d1,
    output [0:7] d0
    );
	 
	 hex_to_7seg h1(a[7:4], d1);
	 hex_to_7seg h0(a[3:0], d0);

endmodule
