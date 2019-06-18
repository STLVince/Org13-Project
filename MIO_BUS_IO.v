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
					input[31:0]Cpu_data2bus,				//data from CPU
					input[31:0]addr_bus,
					input[31:0]ram_data_out,
					input[15:0]led_out,
					input[31:0]counter_out,
					input counter0_out,
					input counter1_out,
					input counter2_out,
					
					output reg[31:0]Cpu_data4bus,				//write to CPU
					output reg[31:0]ram_data_in,				//from CPU write to Memory
					output reg[9:0]ram_addr,						//Memory Address signals
					output reg data_ram_we,
					output reg GPIOf0000000_we,
					output reg GPIOe0000000_we,
					output reg counter_we,
					output reg[31:0]Peripheral_in,
					
					input [9:0] ps2kb_key,
					output reg vram_we,
					output reg [11:0] vram_data,
					output reg [17:0] vram_addr,
					
					input [11:0] background_data,
					output reg [9:0] background_addr,
					
					input [11:0] character_data,
					output reg [9:0] character_addr,
					
					input [11:0] ci_data,
					output reg [9:0] ci_addr,
					
					input [11:0] wall_data,
					output reg [9:0] wall_addr
					);
	reg data_ram_rd, GPIOf0000000_rd, GPIOe0000000_rd, counter_rd, ps2kb_rd, background_rd, character_rd, ci_rd, wall_rd;
	wire counter_over; 

	always@* begin
		data_ram_we = 0; 
		data_ram_rd = 0; 
		counter_we = 0; 
		counter_rd = 0; 
		GPIOf0000000_we = 0; //PIO写
		GPIOe0000000_we = 0; //Counter_x写
		GPIOf0000000_rd = 0; //SW读
		GPIOe0000000_rd = 0; //七段数码管写
		ram_addr = 10'h0; //RAM_B
		ram_data_in = 32'h0; //RAM_B输入数据
		Peripheral_in=32'h0; //CPU输出，外设写
		ps2kb_rd = 0; //keyborad
		background_rd = 0;
		background_addr = 10'h0;
		character_rd = 0;
		character_addr = 10'h0;
		ci_rd = 0;
		ci_addr = 10'h0;
		wall_rd = 0;
		wall_addr = 10'h0;
		vram_we = 0; //vga
		vram_data = 12'h0;
		vram_addr = 18'h0;
		case(addr_bus[31:28])
		4'h0:begin 
				data_ram_we = mem_w;
				ram_addr = addr_bus[11:2];
				ram_data_in = Cpu_data2bus;
				data_ram_rd = ~mem_w;
		end
		4'he:begin 
				GPIOe0000000_we = mem_w;
				Peripheral_in = Cpu_data2bus;
				GPIOe0000000_rd = ~mem_w;
		end
		4'hf:begin 
				if(addr_bus[2])begin     
					counter_we = mem_w;
					Peripheral_in = Cpu_data2bus; 
					counter_rd = ~mem_w;
				end
				else begin     
					GPIOf0000000_we = mem_w;
					Peripheral_in = Cpu_data2bus; 
					GPIOf0000000_rd = ~mem_w;
				end
		end
		4'hc:begin 
				vram_we = mem_w;
				vram_addr = addr_bus[17:0];
				vram_data = Cpu_data2bus[11:0];
		end
		4'hd:begin 
				ps2kb_rd = ~mem_w;
		end
		4'hb:begin 
				background_rd = ~mem_w;
				background_addr = addr_bus[9:0];
		end
		4'ha:begin 
				character_rd = ~mem_w;
				character_addr = addr_bus[9:0];
		end
		4'h9:begin 
				ci_rd = ~mem_w;
				ci_addr = addr_bus[9:0];
		end
		4'h8:begin 
				wall_rd = ~mem_w;
				wall_addr = addr_bus[9:0];
		end
			
		default:begin;end
		
		endcase
	end
	
always @* begin
	Cpu_data4bus = 32'h0;
		casex({data_ram_rd,GPIOe0000000_rd,counter_rd,GPIOf0000000_rd, ps2kb_rd, background_rd, character_rd, ci_rd, wall_rd})
			9'b1xxxxxxxx:Cpu_data4bus = ram_data_out; //read from RAM
			9'bx1xxxxxxx:Cpu_data4bus = counter_out;  //read from Counter
			9'bxx1xxxxxx:Cpu_data4bus = counter_out;  //read from Counter
			9'bxxx1xxxxx:Cpu_data4bus = {counter0_out,counter1_out,counter2_out,led_out[12:0],SW}; //read from SW & BTN
			9'bxxxx1xxxx:Cpu_data4bus = {{22{1'b0}}, ps2kb_key}; //read from keyborad
			
			9'bxxxxx1xxx:Cpu_data4bus = {{20{1'b0}}, background_data}; //read from background
			9'bxxxxxx1xx:Cpu_data4bus = {{20{1'b0}}, character_data}; //read from character
			9'bxxxxxxx1x:Cpu_data4bus = {{20{1'b0}}, ci_data}; //read from ci
			9'bxxxxxxxx1:Cpu_data4bus = {{20{1'b0}}, wall_data}; //read from wall
		endcase
end
															
endmodule
