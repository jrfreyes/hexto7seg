`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:01:17 08/04/2022 
// Design Name: 
// Module Name:    hex_to_7seg 
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
module hex_to_7seg(
    input [3:0] a,
    output reg [0:7] d
    );

	always @(a) begin
		case (a) 
			4'b0000: d = 8'b11111110;
			4'b0001: d = 8'b01100000;
			4'b0010: d = 8'b11011010;
			4'b0011: d = 8'b11110010;
			4'b0100: d = 8'b01100110;
			4'b0101: d = 8'b10110110;
			4'b0110: d = 8'b10111110;
			4'b0111: d = 8'b11100000;
			4'b1000: d = 8'b11111110;
			4'b1001: d = 8'b11110110;
			4'b1010: d = 8'b11101110;
			4'b1011: d = 8'b00111110;
			4'b1100: d = 8'b10011100;
			4'b1101: d = 8'b01111010;
			4'b1110: d = 8'b10011110;
			4'b1111: d = 8'b10001110;
			default: d = 8'b00000000;
		endcase
	end

endmodule
