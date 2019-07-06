`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:35 12/04/2018 
// Design Name: 
// Module Name:    BYTE2WORD 
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
module BYTE2WORD #(parameter ADDR_WIDTH = 12)
		(input clk,
		 input rst,
		 input clkm, 
		 input WR, 
		 input enm,
		 input [ADDR_WIDTH-1:0]Addr, 
		 input [31:0]MMDi, 
		 input progEn,
		 input readEn,
		 input ByteEn, 
		 input [7:0]Byte, 
		 output reg BRD=0,
		 output reg BWD=0,
		 output [ADDR_WIDTH-1:0]MAddr, 
		 output [31:0] MMDo, 
		 output mclk,
		 output MWR, 
		 output MEN );

endmodule
