`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:14 06/30/2012 
// Design Name: 
// Module Name:    MIO_BUS 
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
module MIO_BUS(input clk,
					input rst,
					input[3:0]BTN,
					input[15:0]SW,
					input mem_w,
					input[31:0]Cpu_data2bus,//CPU输入总线的数据
					input[31:0]addr_bus,
					input[31:0]ram_data_out,
					input[15:0]led_out,
					input[31:0]counter_out,
					input counter0_out,
					input counter1_out,
					input counter2_out,
					
					output reg[31:0]Cpu_data4bus,//总线返回CPU的数据
					output reg[31:0]ram_data_in,//内存写
					output reg[9:0]ram_addr,//内存地址
					output reg data_ram_we,
					output reg GPIOf0000000_we,			
					output reg GPIOe0000000_we,			
					output reg counter_we,					
					output reg[31:0]Peripheral_in,
					
					input [9:0] ps2kb_key,
					output reg vram_we,
					output reg [11:0] vram_data,
					output reg [18:0] vram_addr,
					
					input [11:0] background_data,//背景12位颜色
					output reg [9:0] background_addr,//背景地址
					
					input [11:0] character_data,//人物12位颜色
					output reg [9:0] character_addr,//人物地址
					
					input [11:0] wall_data,//障碍12位颜色
					output reg [9:0] wall_addr,//障碍地址
					
					input [11:0] cai_data,//死亡界面12位颜色
					output reg [16:0] cai_addr//死亡界面地址
					);	

	reg data_ram_rd, GPIOf0000000_rd, GPIOe0000000_rd, counter_rd, ps2kb_rd, background_rd, character_rd, wall_rd, cai_rd;
	wire counter_over; 

	always@(posedge clk) begin
		data_ram_we = 0; 
		data_ram_rd = 0; 
		counter_we = 0; 
		counter_rd = 0; 
		GPIOf0000000_we = 0; 
		GPIOe0000000_we = 0; 
		GPIOf0000000_rd = 0; 
		GPIOe0000000_rd = 0; 
		ram_addr = 10'h0; 
		ram_data_in = 32'h0; 
		Peripheral_in=32'h0; 
		ps2kb_rd = 0; 
		background_rd = 0;
		background_addr = 10'h0;
		character_rd = 0;
		character_addr = 10'h0;
		wall_rd = 0;
		wall_addr = 10'h0;
		cai_rd = 0;
		cai_addr = 17'h0;
		vram_we = 0; //vga
		vram_data = 12'h0;
		vram_addr = 19'h0;
		case(addr_bus[31:28])
		4'h0:begin // ram 
				data_ram_we = mem_w;
				ram_addr = addr_bus[11:2];
				ram_data_in = Cpu_data2bus;
				data_ram_rd = ~mem_w;
		end
		4'he:begin // 七段显示器
				GPIOe0000000_we = mem_w;
				Peripheral_in = Cpu_data2bus;
				GPIOe0000000_rd = ~mem_w;
		end
		4'hf:begin // PIO 
				if(addr_bus[2])begin    //counter 
					counter_we = mem_w;
					Peripheral_in = Cpu_data2bus; //Counter写
					counter_rd = ~mem_w;
				end
				else begin     //LED
					GPIOf0000000_we = mem_w;
					Peripheral_in = Cpu_data2bus; 
					GPIOf0000000_rd = ~mem_w;
				end
		end
		4'hc:begin // vga
				vram_we = mem_w;
				vram_addr = addr_bus[18:0];
				vram_data = Cpu_data2bus[11:0];
		end
		4'hd:begin // keyborad
				ps2kb_rd = ~mem_w;
		end
		4'hb:begin // background
				background_rd = ~mem_w;
				background_addr = addr_bus[9:0];
		end
		4'ha:begin // character
				character_rd = ~mem_w;
				character_addr = addr_bus[9:0];
		end
		4'h9:begin // wall
				wall_rd = ~mem_w;
				wall_addr = addr_bus[9:0];
		end
		4'h8:begin //cai
				cai_rd = ~mem_w;
				cai_addr = addr_bus[16:0];
		end		
			
		default:begin;end
		
		endcase
	end
	
always @* begin
	Cpu_data4bus = 32'h0;
		casex({data_ram_rd,GPIOe0000000_rd,counter_rd,GPIOf0000000_rd, ps2kb_rd, background_rd, character_rd, wall_rd, cai_rd})
			9'b1xxxxxxxx:Cpu_data4bus = ram_data_out; //RAM读
			9'bx1xxxxxxx:Cpu_data4bus = counter_out;  //Counter读
			9'bxx1xxxxxx:Cpu_data4bus = counter_out;  //Counter读
			9'bxxx1xxxxx:Cpu_data4bus = {counter0_out,counter1_out,counter2_out,led_out[12:0],SW}; //SW&BTN读
			9'bxxxx1xxxx:Cpu_data4bus = {{22{1'b0}}, ps2kb_key}; //ps2键盘读
			
			9'bxxxxx1xxx:Cpu_data4bus = {{20{1'b0}}, background_data}; //background读
			9'bxxxxxx1xx:Cpu_data4bus = {{20{1'b0}}, character_data}; //character读
			9'bxxxxxxx1x:Cpu_data4bus = {{20{1'b0}}, wall_data}; //wall读
			9'bxxxxxxxx1:Cpu_data4bus = {{20{1'b0}}, cai_data}; //cai读
		endcase
end


endmodule

