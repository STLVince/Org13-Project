`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:48 05/18/2019 
// Design Name: 
// Module Name:    top 
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
module top(						input clk_100mhz,
									input RSTN,
									input [3:0] BTN_y,
									output [4:0] BTN_x,
									input [15:0] SW,
									output led_clk,
									output led_sout,
									output LED_PEN,
									output led_clrn,
									output seg_clk,
									output seg_sout,
									output SEG_PEN,
									output seg_clrn,
									output Buzzer,
									output [7:0] SEGMENT,
									output [3:0] AN,
									output [7:0] LED,
									output CR, RDY, readn,
									
									input PS2_clk,
									input PS2_data,
									output [3:0]Blue, Green, Red,
									input RXD,
									output TXD,
									output HSYNC,
									output VSYNC
    );

wire rst, Clk_CPU, IO_clk, GPIOF0;
wire mem_w, V5, N0;
wire counter0_out, counter1_out, counter2_out, counter_we, GPIOe0000000_we, data_ram_we, vram_we;
wire [1:0] counter_ch;
wire [3:0] Pulse, BTN_OK;
wire [4:0] Din, State;
wire [7:0] blink, LE_out, point_out;
wire [8:0] row;
wire [9:0] PS2_key, col;
wire [9:0] ram_addr;
wire [11:0] vga_data, vram_data_in, vram_data_out;
wire [15:0] SW_OK, LED_out;
wire [18:0] vram_r_addr, vram_w_addr;
wire [31:0] Div, Ai, Bi, Disp_num, inst, CPU2IO, PC, Addr_out, Data_in, Data_out, Counter_out, ram_data_in, ram_data_out;
wire [11:0] background_data, character_data, wall_data, cai_data;
wire [9:0] background_addr, character_addr, wall_addr;
wire [16:0] cai_addr;


SAnti_jitter U9	(.RSTN(RSTN), .clk(clk_100mhz), .Key_y(BTN_y), .Key_x(BTN_x), .SW(SW), .readn(readn),
						.CR(CR), .Key_out(Din), .Key_ready(RDY), .pulse_out(Pulse), .BTN_OK(BTN_OK), 
						.SW_OK(SW_OK), .rst(rst));

clk_div U8			(.clk(clk_100mhz), .rst(rst), .SW2(SW_OK[2]), .clkdiv(Div), .Clk_CPU(Clk_CPU));

VCC  v_13 (.P(V5));
GND  g_14 (.G(N0));
assign Buzzer = V5;
assign IO_clk = ~Clk_CPU;

SEnter_2_32 M4		(.clk(clk_100mhz), .Din(Din), .D_ready(RDY), .BTN(BTN_OK[2:0]), .Ctrl({SW_OK[7:5],SW_OK[15],SW_OK[0]}),
						.readn(readn), .Ai(Ai), .Bi(Bi), .blink(blink));
						
SSeg7_Dev	U6		(.clk(clk_100mhz), .rst(rst), .Start(Div[20]), .SW0(SW_OK[0]), .flash(Div[25]), .Hexs(Disp_num), 
						.point(point_out), .LES(LE_out), .seg_clk(seg_clk),.seg_sout(seg_sout),.SEG_PEN(SEG_PEN),.seg_clrn(seg_clrn));

Multi_CPU U1		(.clk(Clk_CPU), .reset(rst), .inst_out(inst), .INT(counter0_out), .PC_out(PC), .mem_w(mem_w), 
						.Addr_out(Addr_out), .Data_in(Data_in), .Data_out(Data_out), .state(State), .MIO_ready(V5));

//RAM_B U3				(.addra(ram_addr), .wea(data_ram_we), .dina(ram_data_in), .clka(clk_100mhz), .douta(ram_data_out));

//���ڣ��ɴ�PCֱ�ӵ���coe
MEMBANK U31 		(.clk(clk_100mhz), .rst(rst), .Start(SW_OK[13]), .PROG(SW_OK[14]), .clkm(~clk_100mhz), .WR(data_ram_we), 
						.enm(), .Addr({0,0,ram_addr}), .MDi(MDi), .halfPeriod(9'd433), .RXD(RXD), .TXD(TXD), .TxEnd(), .mclk(), 
						.MWR(), .MEN(), .MAddr(), .MBDi(), .MDo(ram_data_out), .TESTD());

Counter U10			(.clk(IO_clk), .rst(rst), .clk0(Div[6]), .clk1(Div[9]), .clk2(Div[11]), .counter_we(counter_we), 
						.counter_val(CPU2IO), .counter_ch(counter_ch), .counter0_OUT(counter0_out), .counter1_OUT(counter1_out), 
						.counter2_OUT(counter2_out), .counter_out(Counter_out));
						
Multi_8CH32 U5		(.clk(IO_clk), .rst(rst), .EN(GPIOe0000000_we), .Test(SW_OK[7:5]), .point_in({Div,Div}), .LES({64{1'b0}}), 
						.Data0(CPU2IO), .data1({N0,N0,PC[31:2]}), .data2(inst), .data3(Counter_out), .data4(Addr_out), .data5(Data_out), 
						.data6(Data_in), .data7({{22{N0}},PS2_key}), .Disp_num(Disp_num), .point_out(point_out), .LE_out(LE_out));
						

SPIO U7				(.clk(IO_clk),.rst(rst),.EN(GPIOF0),.Start(Div[20]),.GPIOf0(),.P_Data(CPU2IO),
						.counter_set(counter_ch),.LED_out(LED_out),.led_clk(led_clk),.led_sout(led_sout),.LED_PEN(LED_PEN),
						.led_clrn(led_clrn));


Seg7_Dev U61		(.Scan({SW_OK[1],Div[19:18]}), .SW0(SW_OK[0]), .flash(Div[25]), .Hexs(Disp_num), .point(point_out), 
						.LES(LE_out),.SEGMENT(SEGMENT), .AN(AN));

PIO U71				(.clk(IO_clk), .rst(rst), .EN(GPIOF0), .PData_in(CPU2IO), .LED_out(LED));

MIO_BUS U4			(.clk(clk_100mhz), .rst(rst), .BTN(BTN_OK), .SW(SW_OK), .mem_w(mem_w), .addr_bus(Addr_out), 
						.Cpu_data4bus(Data_in), .Cpu_data2bus(Data_out), .ram_data_in(ram_data_in), .data_ram_we(data_ram_we), 
						.ram_addr(ram_addr), .ram_data_out(ram_data_out), .Peripheral_in(CPU2IO), .GPIOe0000000_we(GPIOe0000000_we), 
						.GPIOf0000000_we(GPIOF0), .led_out(LED_out), .counter_out(Counter_out), .counter2_out(counter2_out), 
						.counter1_out(counter1_out), .counter0_out(counter0_out), .counter_we(counter_we), 
						.ps2kb_key(PS2_key), .vram_we(vram_we), .vram_data(vram_data_in), .vram_addr(vram_w_addr),
						.background_data(background_data), .background_addr(background_addr),
						.character_data(character_data), .character_addr(character_addr),
						.wall_data(wall_data), .wall_addr(wall_addr),
						.cai_data(cai_data), .cai_addr(cai_addr)
						);

//�ذ���ͼ32*32
background back 	(.a(background_addr), .spo(background_data));

//������ͼ32*32					
character player 	(.a(character_addr), .spo(character_data));

//�ϰ���ͼ32*32
wall walls			(.a(wall_addr), .spo(wall_data));

//������ͼ640*190
CAI death 			(.clka(clk_100mhz), .addra(cai_addr), .douta(cai_data));	

//�Դ棬˫�˿�ip��
VRAM frame 			(.clka(clk_100mhz), .wea(vram_we), .addra(vram_w_addr), .dina(vram_data_in), .clkb(Div[1]), 
						.addrb(vram_r_addr), .doutb(vram_data_out));
//vga����ģ��
GPU gpu				(.clk(Div[1]), .row(row), .col(col), .vram_addr(vram_r_addr), .vram_data(vram_data_out), .vga_data(vga_data)
						);
//vgaģ��
VGA vga				(.clk(Div[1]), .rst(rst), .Din(vga_data), .row(row), .col(col), .rdn(), 
						.R(Red), .G(Green), .B(Blue), .HS(HSYNC), .VS(VSYNC));
//ps2ģ��
ps2_ver2 ps2		(.clk(clk_100mhz), .rst(rst), .ps2_clk(PS2_clk), .ps2_data(PS2_data), 
						.data_out(PS2_key), .ready());

endmodule