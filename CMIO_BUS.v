`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:57 06/18/2019 
// Design Name: 
// Module Name:    CMIO_BUS 
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
module CMIO_BUS(input wire clk,
					 input wire rst,
					 input wire[3:0]BTN,
					 input wire[15:0]SW,
					 input wire vga_rdn,
					 input wire ps2_ready,
					 input wire mem_w,
					 input wire[7:0]key,
					 input wire[31:0]Cpu_data2bus,							//data from CPU
					 input wire[31:0]Addr_bus,
					 input wire[12:0]vga_addr,
					 input wire[31:0]ram_data_out,
					 input wire[15:0]vram_out,
					 input wire[31:0]counter_out,
					 input wire counter0_out,
					 input wire counter1_out,
					 input wire counter2_out,
					
					 output wire CPU_wait,
					 output reg[31:0]Cpu_data4bus,							//Data write to CPU
					 output reg[31:0]ram_data_in,								//from CPU write to Memory
					 output reg[11:0]ram_addr,									//Memory Address signals
					 output reg[15:0]vram_data_in,							//from CPU write to Vram Memory
					 output wire[12:0]vram_addr,								//Vram Address signals
					 output reg data_ram_we,
					 output wire vram_we,
					 output reg GPIOffffff00_we,
					 output reg GPIOfffffe00_we,
					 output reg counter_we,
					 output reg ps2_rd,
					 output reg [31:0]Peripheral_in
					 );

wire counter_over;
reg ready=1,vram, vram_write;
reg [12:0] cpu_vram_addr;

	assign CPU_wait= vram ? vga_rdn && ready : 1;		//  ~vram &&
	always@(posedge clk or posedge rst)
		if(rst)ready<=1; else ready <= vga_rdn;
		
	assign vram_we = vga_rdn && vram_write;		//CPU_wait & 
	assign vram_addr = ~vga_rdn? vga_addr : cpu_vram_addr;
	
//RAM & IO decode signals:	
	always @* begin
		vram=0;
		data_ram_we = 0;
		vram_write=0;
		counter_we = 0;
		GPIOffffff00_we = 0;
		GPIOfffffe00_we = 0;
		ps2_rd=0;
		ram_addr = 12'h0;
		cpu_vram_addr=13'h0;
		ram_data_in = 32'h0;
		vram_data_in=15'h0;

		Peripheral_in= 32'h0;
		Cpu_data4bus = 32'h0;

		casex(Addr_bus[31:8])
			24'h0000xx: begin 	// data_ram (00000000 - 0000ffff(00000ffc), actually lower 4KB RAM)
				data_ram_we = mem_w;
				ram_addr=Addr_bus[13:2];
				ram_data_in = Cpu_data2bus;
				Cpu_data4bus = ram_data_out;			
			end
			
			24'h000cxx: begin 	// Vram (000c0000 - c000ffff(000012c0), actually lower 4K¡Á11bit VRAM)
				vram_write = mem_w ;
				vram=1;
				cpu_vram_addr = Addr_bus[14:2];
				vram_data_in = Cpu_data2bus[15:0];
				Cpu_data4bus = vga_rdn? {16'h0, vram_out[15:0]} :  32'hx ;			
			end		
			
			24'hffffdx: begin					//PS2 (ffffd000~ ffffdfff)
				ps2_rd = ~mem_w;
				Peripheral_in = Cpu_data2bus;							//write NU 
				Cpu_data4bus = {ps2_ready,23'h0, key};				//read from PS2;
			end 

			24'hfffffe: begin  					// 7 Segement LEDs (fffffe00 - fffffeff, 4 7-seg display)
				GPIOfffffe00_we = mem_w;
				Peripheral_in = Cpu_data2bus;
				Cpu_data4bus =counter_out;					//read from Counter
			end
					
			24'hffffff: begin 		// LED   (ffffff00-ffffffff0,8 LEDs & counter, ffffff04-fffffff4)
				if(Addr_bus[2]) begin		  //ffffff04  for addr of counter
					counter_we = mem_w;
					Peripheral_in = Cpu_data2bus;			//write Counter Value 
					Cpu_data4bus = counter_out;			//read from Counter;
				end 
				else begin							//ffffff00
					GPIOffffff00_we = mem_w;
					Peripheral_in = Cpu_data2bus;	//write Counter set & Initialization and light LED
					Cpu_data4bus = {counter0_out,counter1_out,counter2_out,9'h000, BTN,SW[15:0]};
				end 
			end
		endcase
	end			// always end

endmodule
