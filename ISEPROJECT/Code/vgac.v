`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:07 12/28/2018 
// Design Name: 
// Module Name:    vgac 
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
module vgac (vga_clk,clrn,d_in,row_addr,col_addr,rdn,r,g,b,hs,vs);
   input     [11:0] d_in;     // BGR顺序的12位信息
   input            vga_clk;  // 25HMz时钟做60Hz刷新
   input            clrn;     // RESET信号
   output reg [8:0] row_addr; // 扫描到的纵坐标
   output reg [9:0] col_addr; // 扫描到的横坐标
   output reg [3:0] r,g,b;    // RGB信息 
   output reg       rdn;      // 是否读取
   output reg       hs,vs;    // 行信号与场信号
 
   reg [9:0] h_count; 
   always @ (posedge vga_clk) begin
       if (!clrn) begin
           h_count <= 10'h0;
       end else if (h_count == 10'd799) begin
           h_count <= 10'h0;
       end else begin 
           h_count <= h_count + 10'h1;
       end
   end
  
   reg [9:0] v_count;
   always @ (posedge vga_clk or negedge clrn) begin
       if (!clrn) begin
           v_count <= 10'h0;
       end else if (h_count == 10'd799) begin
           if (v_count == 10'd524) begin
               v_count <= 10'h0;
           end else begin
               v_count <= v_count + 10'h1;
           end
       end
   end
 
    wire  [9:0] row    =  v_count - 10'd35;     
    wire  [9:0] col    =  h_count - 10'd143;    
    wire  h_sync = (h_count > 10'd95);    
    wire  v_sync = (v_count > 10'd1);    
    wire  read   = (h_count > 10'd142) && (h_count < 10'd783) &&
                   (v_count > 10'd34)  && (v_count < 10'd515); 

    always @ (posedge vga_clk) begin
        row_addr <=  row[8:0];
        col_addr <=  col;
        rdn <= ~read;
        hs <=  h_sync; 
        vs <=  v_sync; 
        r  <=  rdn ? 4'h0 : d_in[11:8];
        g  <=  rdn ? 4'h0 : d_in[7:4]; 
        b  <=  rdn ? 4'h0 : d_in[3:0]; 
    end
endmodule
