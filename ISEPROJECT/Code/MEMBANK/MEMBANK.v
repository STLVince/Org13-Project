`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:46 03/17/2019 
// Design Name: 
// Module Name:    MEMBANK 
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
module 	 MEMBANK#(parameter COUNTER_MSB = 9,				//传入移位寄存器参数
						 parameter WIDTH = 8,						//队列位宽
						 parameter DEPTH_BITS = 7,					//队列长度
						 parameter ADDR_WIDTH = 12)				//存储器深度容量
						(input clk,										//计数同步时钟100MHz
						 input rst,  
						 input Start,									//启动发送
						 input PROG,									//PROG=1存储器编程
						 input clkm, 									//BLOCK MEM时钟
						 input WR, 										//BLOCK MEM写信号
						 input enm,										//BLOCK MEM使能
						 input [ADDR_WIDTH-1:0]Addr, 
						 input [31:0] MDi,								//存储器写入数据

						 // input rd,										//接收队列读信号
						 input [COUNTER_MSB-1:0] halfPeriod,	//常数9'd434
						 // input [7:0] Tx_Data,						//发送数据
						 input RXD,										//串行接收信号
						 
						 output TXD,                    			//串行发送信号
						 output TxEnd,   		       				//发送数据结束
						 output mclk,									//MEM BANK写时钟
						 output MWR,									//MEM BANK写信号
						 output MEN,									//MEM BANK使能
						 output [11:0]MAddr,							//MEM BANK访问地址
						 output [31:0]MBDi,							//MEM BANK写入数据:PROG=时为编程数据
						 output [31:0]MDo,							//MEM BANK读出数据
						 output [31:0]TESTD
						 );
						 
	wire[7:0]Rx_Do;													//RXD接收数据

	UARTER	//#(.COUNTER_MSB(9),									//传入移位寄存器参数
				//.WIDTH(8),											//队列位宽
				//.DEPTH_BITS(7))										//队列长度
			  MEM(.clk(clk),											//计数同步时钟100MHz
					.rst(rst),  
					.Start(wd),										//启动发送####
					.rd(rd),												//接收队列读信号
					.halfPeriod(halfPeriod),						//常数9'd434
					.Tx_Data(MBDi),								   //发送数据####
					.RXD(RXD),											//串行接收信号
						 
					.TXD(TXD),                    				//串行发送信号
					.Rx_Do(Rx_Do),										//接收数据缓冲器
					.TxEnd(TxEnd),          						//发送数据结束
					.ready(ready),
					.TESTD(TESTD)	);
				

	BYTE2WORD		//#(.ADDR_WIDTH(12))
					 U103(.clk(clk),
							.rst(rst),
							.clkm(clkm), 
							.WR(WR), 
		 					.enm(enm),
							.Addr(Addr), 
							.MMDi((PROG == 1'b1 && Start == 1'b1) ? MDo : MDi), // 只有在读写开关都1的时候才MDo
							.progEn(PROG),								//MEMBANK编程控制
							.readEn(Start),
							.ByteEn(ready),							//队列输出数据有效 
							.Byte(Rx_Do), 								//队列输出数据
							.BRD(rd),									//队列读信号
							.BWD(wd), 									//###
							.MAddr(MAddr), 							//MEM BLOCK访问地址
							.MMDo(MBDi), 								//MEM BANK写数据：MDi或编程数据
							.mclk(mclk),								//BLOCK Memory时钟
							.MWR(MWR), 									//MEM BANK 写信号
							.MEN(MEN)		);							//MEM BANK 使能
						

	//assign MDo = 32'h 123456789;
	RAM_B	 	 U105(.clka(mclk),
						.wea(MWR),
						.addra(MAddr),
						.dina(MBDi),
						.douta(MDo)
						);


endmodule
