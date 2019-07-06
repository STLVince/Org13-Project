`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:36 03/06/2016 
// Design Name: 
// Module Name:    UARTER 
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
module 	  UARTER#(parameter COUNTER_MSB = 9,				//传入移位寄存器参数
						 parameter WIDTH = 8,						//队列位宽
						 parameter DEPTH_BITS = 7)					//队列长度
						(input clk,										//计数同步时钟100MHz
						 input rst,  
						 input Start,									//启动发送
						 input rd,										//接收队列读信号
						 input [COUNTER_MSB-1:0] halfPeriod,	//常数9'd434
						 input [31:0] Tx_Data,						//发送数据
						 input RXD, 									//串行接收信号
						 				 
						 
						 output TXD,                    			//串行发送信号
						 output TxEnd,          					//发送数据结束
						 output [WIDTH-1:0]Rx_Do,					//接收数据缓冲器
						 output ready,
						 output [31:0]TESTD
						 );
						 

endmodule
