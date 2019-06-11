<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="RSTN" />
        <signal name="BTN_y(3:0)" />
        <signal name="BTN_x(4:0)" />
        <signal name="SW(15:0)" />
        <signal name="XLXN_5(4:0)" />
        <signal name="CR" />
        <signal name="RDY" />
        <signal name="Pulse(3:0)" />
        <signal name="BTN_OK(3:0)" />
        <signal name="BTN_OK(2:0)" />
        <signal name="SW_OK(15:0)" />
        <signal name="SW_OK(7:5),SW_OK(15),SW_OK(0)" />
        <signal name="readn" />
        <signal name="Ai(31:0)" />
        <signal name="Bi(31:0)" />
        <signal name="blink(7:0)" />
        <signal name="rst" />
        <signal name="Div(20)" />
        <signal name="SW_OK(0)" />
        <signal name="Div(25)" />
        <signal name="seg_clk" />
        <signal name="seg_sout" />
        <signal name="SEG_PEN" />
        <signal name="seg_clrn" />
        <signal name="clk_100mhz" />
        <signal name="SW_OK(2)" />
        <signal name="Clk_CPU" />
        <signal name="V5" />
        <signal name="Buzzer" />
        <signal name="IO_clk" />
        <signal name="GPIOF0" />
        <signal name="CPU2IO(31:0)" />
        <signal name="LED(7:0)" />
        <signal name="SW_OK(1),Div(19:18)" />
        <signal name="Disp_num(31:0)" />
        <signal name="point_out(7:0)" />
        <signal name="LE_out(7:0)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="AN(3:0)" />
        <signal name="N0" />
        <signal name="XLXN_61" />
        <signal name="Div(31:0)" />
        <signal name="Div(6)" />
        <signal name="Div(9)" />
        <signal name="Div(11)" />
        <signal name="inst(31:0)" />
        <signal name="PC(31:0)" />
        <signal name="XLXN_78(9:0)" />
        <signal name="XLXN_80(31:0)" />
        <signal name="XLXN_82(0:0)" />
        <signal name="XLXN_84(31:0)" />
        <signal name="XLXN_86" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="XLXN_93" />
        <signal name="SW_OK(7:5)" />
        <signal name="LED_out(15:0)" />
        <signal name="XLXN_99" />
        <signal name="Counter_out(31:0)" />
        <signal name="XLXN_103" />
        <signal name="XLXN_101" />
        <signal name="XLXN_110(1:0)" />
        <signal name="Div(31:0),Div(31:0)" />
        <signal name="XLXN_113(63:0)" />
        <signal name="N0,N0,PC(31:2)" />
        <signal name="led_clk" />
        <signal name="led_sout" />
        <signal name="LED_PEN" />
        <signal name="led_clrn" />
        <signal name="XLXN_130" />
        <signal name="State(4:0)" />
        <port polarity="Input" name="RSTN" />
        <port polarity="Input" name="BTN_y(3:0)" />
        <port polarity="Output" name="BTN_x(4:0)" />
        <port polarity="Input" name="SW(15:0)" />
        <port polarity="Output" name="CR" />
        <port polarity="Output" name="RDY" />
        <port polarity="Output" name="readn" />
        <port polarity="Output" name="seg_clk" />
        <port polarity="Output" name="seg_sout" />
        <port polarity="Output" name="SEG_PEN" />
        <port polarity="Output" name="seg_clrn" />
        <port polarity="Input" name="clk_100mhz" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="led_clk" />
        <port polarity="Output" name="led_sout" />
        <port polarity="Output" name="LED_PEN" />
        <port polarity="Output" name="led_clrn" />
        <blockdef name="SAnti_jitter">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="300" x="64" y="-248" height="256" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-32" y2="-32" x1="64" />
            <line x2="32" y1="-160" y2="-160" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-192" y2="-192" x1="64" />
            <line x2="400" y1="-192" y2="-192" style="linewidth:W" x1="368" />
            <line x2="364" y1="-160" y2="-160" x1="400" />
            <line x2="364" y1="-224" y2="-224" x1="400" />
            <line x2="364" y1="-16" y2="-16" x1="400" />
            <line x2="400" y1="-48" y2="-48" style="linewidth:W" x1="368" />
            <line x2="400" y1="-128" y2="-128" style="linewidth:W" x1="368" />
            <line x2="400" y1="-96" y2="-96" style="linewidth:W" x1="368" />
        </blockdef>
        <blockdef name="SEnter_2_32">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <line x2="288" y1="-240" y2="-240" x1="320" />
            <line x2="320" y1="-192" y2="-192" style="linewidth:W" x1="288" />
            <line x2="320" y1="-128" y2="-128" style="linewidth:W" x1="288" />
            <line x2="320" y1="-64" y2="-64" style="linewidth:W" x1="288" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(170,255,255);fillstyle:Solid" width="256" x="32" y="-272" height="272" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" x1="32" />
            <line x2="0" y1="-240" y2="-240" x1="32" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="SSeg7_Dev">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <line x2="0" y1="-48" y2="-48" style="linewidth:W" x1="32" />
            <line x2="368" y1="-160" y2="-160" x1="384" />
            <line x2="368" y1="-224" y2="-224" x1="384" />
            <line x2="368" y1="-96" y2="-96" x1="384" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-112" y2="-112" style="linewidth:W" x1="32" />
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(174,185,255);fillstyle:Solid" width="336" x="32" y="-372" height="360" />
            <line x2="0" y1="-224" y2="-224" x1="32" />
            <line x2="0" y1="-160" y2="-160" x1="32" />
            <line x2="368" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="-336" y2="-336" x1="32" />
            <line x2="0" y1="-304" y2="-304" x1="32" />
            <line x2="0" y1="-272" y2="-272" x1="32" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(142,240,255);fillstyle:Solid" width="256" x="32" y="-140" height="140" />
            <line x2="0" y1="-80" y2="-80" x1="32" />
            <line x2="0" y1="-112" y2="-112" x1="32" />
            <line x2="0" y1="-32" y2="-32" x1="32" />
            <line x2="320" y1="-112" y2="-112" style="linewidth:W" x1="288" />
            <line x2="320" y1="-32" y2="-32" x1="288" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="RAM_B">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="380" x="32" y="32" height="316" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="224" y2="224" style="linewidth:W" x1="0" />
            <line x2="416" y1="144" y2="144" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="MIO_BUS">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(255,255,127);fillstyle:Solid" width="432" x="64" y="-832" height="832" />
            <line x2="32" y1="-800" y2="-800" x1="64" />
            <line x2="32" y1="-736" y2="-736" x1="64" />
            <line x2="32" y1="-544" y2="-544" x1="64" />
            <line x2="32" y1="-480" y2="-480" style="linewidth:W" x1="64" />
            <line x2="32" y1="-416" y2="-416" style="linewidth:W" x1="64" />
            <line x2="32" y1="-352" y2="-352" style="linewidth:W" x1="64" />
            <line x2="32" y1="-64" y2="-64" style="linewidth:W" x1="64" />
            <line x2="32" y1="-112" y2="-112" style="linewidth:W" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-208" y2="-208" style="linewidth:W" x1="64" />
            <line x2="528" y1="-192" y2="-192" style="linewidth:W" x1="496" />
            <line x2="496" y1="-160" y2="-160" x1="528" />
            <line x2="496" y1="-128" y2="-128" x1="528" />
            <line x2="496" y1="-96" y2="-96" x1="528" />
            <line x2="528" y1="-64" y2="-64" x1="496" />
            <line x2="32" y1="-672" y2="-672" style="linewidth:W" x1="64" />
            <line x2="32" y1="-624" y2="-624" style="linewidth:W" x1="64" />
            <line x2="528" y1="-368" y2="-368" style="linewidth:W" x1="496" />
            <line x2="528" y1="-768" y2="-768" style="linewidth:W" x1="496" />
            <line x2="528" y1="-720" y2="-720" x1="496" />
            <line x2="528" y1="-672" y2="-672" x1="496" />
        </blockdef>
        <blockdef name="Counter_x">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(180,180,180);fillstyle:Solid" width="384" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-480" y2="-480" x1="448" />
            <line x2="512" y1="-336" y2="-336" x1="448" />
            <line x2="512" y1="-192" y2="-192" x1="448" />
            <rect width="64" x="448" y="-60" height="24" />
            <line x2="512" y1="-48" y2="-48" x1="448" />
        </blockdef>
        <blockdef name="Multi_8CH32">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <line x2="0" y1="-528" y2="-528" style="linewidth:W" x1="32" />
            <line x2="0" y1="-464" y2="-464" style="linewidth:W" x1="32" />
            <line x2="0" y1="-672" y2="-672" x1="32" />
            <line x2="0" y1="-624" y2="-624" x1="32" />
            <line x2="0" y1="-576" y2="-576" x1="32" />
            <line x2="0" y1="-416" y2="-416" style="linewidth:W" x1="32" />
            <line x2="0" y1="-368" y2="-368" style="linewidth:W" x1="32" />
            <line x2="0" y1="-320" y2="-320" style="linewidth:W" x1="32" />
            <line x2="0" y1="-272" y2="-272" style="linewidth:W" x1="32" />
            <line x2="0" y1="-224" y2="-224" style="linewidth:W" x1="32" />
            <line x2="0" y1="-176" y2="-176" style="linewidth:W" x1="32" />
            <line x2="0" y1="-128" y2="-128" style="linewidth:W" x1="32" />
            <line x2="0" y1="-80" y2="-80" style="linewidth:W" x1="32" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="352" y1="-576" y2="-576" style="linewidth:W" x1="384" />
            <line x2="352" y1="-528" y2="-528" style="linewidth:W" x1="384" />
            <line x2="352" y1="-624" y2="-624" style="linewidth:W" x1="384" />
            <rect style="fillcolor:rgb(179,164,255);fillstyle:Solid" width="320" x="32" y="-696" height="696" />
        </blockdef>
        <blockdef name="SPIO">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="464" y1="-224" y2="-224" style="linewidth:W" x1="448" />
            <line x2="32" y1="-176" y2="-176" x1="64" />
            <line x2="32" y1="-128" y2="-128" x1="64" />
            <line x2="32" y1="-80" y2="-80" x1="64" />
            <line x2="464" y1="-192" y2="-192" style="linewidth:W" x1="448" />
            <line x2="464" y1="-160" y2="-160" style="linewidth:W" x1="448" />
            <line x2="448" y1="-128" y2="-128" x1="464" />
            <line x2="464" y1="-96" y2="-96" x1="448" />
            <line x2="448" y1="-32" y2="-32" x1="464" />
            <line x2="464" y1="-64" y2="-64" x1="448" />
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-260" height="256" />
        </blockdef>
        <blockdef name="Seg7_Dev">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(192,173,254);fillstyle:Solid" width="288" x="32" y="-240" height="240" />
            <line x2="0" y1="-32" y2="-32" style="linewidth:W" x1="32" />
            <line x2="0" y1="-208" y2="-208" style="linewidth:W" x1="32" />
            <line x2="352" y1="-192" y2="-192" style="linewidth:W" x1="320" />
            <line x2="352" y1="-64" y2="-64" style="linewidth:W" x1="320" />
            <line x2="0" y1="-64" y2="-64" style="linewidth:W" x1="32" />
            <line x2="32" y1="-144" y2="-144" x1="0" />
            <line x2="32" y1="-176" y2="-176" x1="0" />
            <line x2="0" y1="-96" y2="-96" style="linewidth:W" x1="32" />
        </blockdef>
        <blockdef name="PIO">
            <timestamp>2016-2-25T15:53:0</timestamp>
            <rect style="fillcolor:rgb(149,160,255);fillstyle:Solid" width="384" x="64" y="-256" height="256" />
            <line x2="32" y1="-224" y2="-224" x1="64" />
            <line x2="32" y1="-160" y2="-160" x1="64" />
            <line x2="32" y1="-96" y2="-96" x1="64" />
            <line x2="32" y1="-32" y2="-32" style="linewidth:W" x1="64" />
            <line x2="480" y1="-32" y2="-32" style="linewidth:W" x1="448" />
            <line x2="480" y1="-128" y2="-128" style="linewidth:W" x1="448" />
            <line x2="480" y1="-224" y2="-224" style="linewidth:W" x1="448" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="Multi_CPU">
            <timestamp>2016-1-4T13:19:0</timestamp>
            <line x2="-48" y1="-512" y2="-512" x1="-16" />
            <line x2="-48" y1="-464" y2="-464" x1="-16" />
            <line x2="-48" y1="-384" y2="-384" style="linewidth:W" x1="-16" />
            <line x2="-48" y1="-224" y2="-224" style="linecolor:rgb(255,0,0)" x1="-16" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(255,170,255);fillstyle:Solid" width="384" x="-16" y="-580" height="564" />
            <line x2="400" y1="-432" y2="-432" style="linewidth:W" x1="368" />
            <line x2="400" y1="-496" y2="-496" x1="368" />
            <line x2="400" y1="-368" y2="-368" style="linewidth:W" x1="368" />
            <line x2="400" y1="-304" y2="-304" style="linewidth:W" x1="368" />
            <line x2="-16" y1="-112" y2="-112" style="linewidth:W" x1="-48" />
            <line x2="400" y1="-64" y2="-64" x1="368" />
            <line x2="368" y1="-112" y2="-112" x1="400" />
            <line x2="368" y1="-160" y2="-160" style="linewidth:W" x1="400" />
        </blockdef>
        <block symbolname="SAnti_jitter" name="U9">
            <blockpin signalname="SW(15:0)" name="SW(15:0)" />
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="BTN_y(3:0)" name="Key_y(3:0)" />
            <blockpin signalname="BTN_x(4:0)" name="Key_x(4:0)" />
            <blockpin signalname="RSTN" name="RSTN" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_5(4:0)" name="Key_out(4:0)" />
            <blockpin signalname="RDY" name="Key_ready" />
            <blockpin signalname="CR" name="CR" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="SW_OK(15:0)" name="SW_OK(15:0)" />
            <blockpin signalname="Pulse(3:0)" name="pulse_out(3:0)" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN_OK(3:0)" />
        </block>
        <block symbolname="SEnter_2_32" name="M4">
            <blockpin signalname="readn" name="readn" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin signalname="Bi(31:0)" name="Bi(31:0)" />
            <blockpin signalname="blink(7:0)" name="blink(7:0)" />
            <blockpin signalname="XLXN_5(4:0)" name="Din(4:0)" />
            <blockpin signalname="RDY" name="D_ready" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SW_OK(7:5),SW_OK(15),SW_OK(0)" name="Ctrl(4:0)" />
            <blockpin signalname="BTN_OK(2:0)" name="BTN(2:0)" />
        </block>
        <block symbolname="SSeg7_Dev" name="U6">
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SEG_PEN" name="SEG_PEN" />
            <blockpin signalname="seg_sout" name="seg_sout" />
            <blockpin signalname="seg_clrn" name="seg_clrn" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="seg_clk" name="seg_clk" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(20)" name="Start" />
        </block>
        <block symbolname="clk_div" name="U8">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="SW_OK(2)" name="SW2" />
            <blockpin signalname="Div(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="Clk_CPU" name="Clk_CPU" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="Clk_CPU" name="I" />
            <blockpin signalname="IO_clk" name="O" />
        </block>
        <block symbolname="RAM_B" name="U3">
            <blockpin signalname="XLXN_78(9:0)" name="addra(9:0)" />
            <blockpin signalname="clk_100mhz" name="clka" />
            <blockpin signalname="XLXN_82(0:0)" name="wea(0:0)" />
            <blockpin signalname="XLXN_84(31:0)" name="dina(31:0)" />
            <blockpin signalname="XLXN_80(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="MIO_BUS" name="U4">
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="clk_100mhz" name="clk" />
            <blockpin signalname="XLXN_86" name="mem_w" />
            <blockpin signalname="Addr_out(31:0)" name="addr_bus(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Cpu_data4bus(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Cpu_data2bus(31:0)" />
            <blockpin signalname="XLXN_80(31:0)" name="ram_data_out(31:0)" />
            <blockpin signalname="XLXN_78(9:0)" name="ram_addr(9:0)" />
            <blockpin signalname="XLXN_82(0:0)" name="data_ram_we" />
            <blockpin signalname="XLXN_84(31:0)" name="ram_data_in(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
            <blockpin signalname="XLXN_103" name="counter2_out" />
            <blockpin signalname="XLXN_101" name="counter1_out" />
            <blockpin signalname="XLXN_130" name="counter0_out" />
            <blockpin signalname="XLXN_99" name="counter_we" />
            <blockpin signalname="BTN_OK(3:0)" name="BTN(3:0)" />
            <blockpin signalname="SW_OK(15:0)" name="SW(15:0)" />
            <blockpin signalname="LED_out(15:0)" name="led_out(15:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Peripheral_in(31:0)" />
            <blockpin signalname="XLXN_93" name="GPIOe0000000_we" />
            <blockpin signalname="GPIOF0" name="GPIOf0000000_we" />
        </block>
        <block symbolname="Counter_x" name="U10">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Div(6)" name="clk0" />
            <blockpin signalname="Div(9)" name="clk1" />
            <blockpin signalname="Div(11)" name="clk2" />
            <blockpin signalname="XLXN_99" name="counter_we" />
            <blockpin signalname="CPU2IO(31:0)" name="counter_val(31:0)" />
            <blockpin signalname="XLXN_110(1:0)" name="counter_ch(1:0)" />
            <blockpin signalname="XLXN_130" name="counter0_OUT" />
            <blockpin signalname="XLXN_101" name="counter1_OUT" />
            <blockpin signalname="XLXN_103" name="counter2_OUT" />
            <blockpin signalname="Counter_out(31:0)" name="counter_out(31:0)" />
        </block>
        <block symbolname="Multi_8CH32" name="U5">
            <blockpin signalname="SW_OK(7:5)" name="Test(2:0)" />
            <blockpin signalname="Div(31:0),Div(31:0)" name="point_in(63:0)" />
            <blockpin signalname="XLXN_93" name="EN" />
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_113(63:0)" name="LES(63:0)" />
            <blockpin signalname="CPU2IO(31:0)" name="Data0(31:0)" />
            <blockpin signalname="N0,N0,PC(31:2)" name="data1(31:0)" />
            <blockpin signalname="inst(31:0)" name="data2(31:0)" />
            <blockpin signalname="Counter_out(31:0)" name="data3(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="data4(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="data5(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="data6(31:0)" />
            <blockpin signalname="PC(31:0)" name="data7(31:0)" />
            <blockpin signalname="point_out(7:0)" name="point_out(7:0)" />
            <blockpin signalname="LE_out(7:0)" name="LE_out(7:0)" />
            <blockpin signalname="Disp_num(31:0)" name="Disp_num(31:0)" />
        </block>
        <block symbolname="SPIO" name="U7">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="CPU2IO(31:0)" name="P_Data(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="GPIOF0" name="EN" />
            <blockpin signalname="Div(20)" name="Start" />
            <blockpin signalname="led_clk" name="led_clk" />
            <blockpin name="GPIOf0(13:0)" />
            <blockpin signalname="LED_out(15:0)" name="LED_out(15:0)" />
            <blockpin signalname="XLXN_110(1:0)" name="counter_set(1:0)" />
            <blockpin signalname="led_clrn" name="led_clrn" />
            <blockpin signalname="LED_PEN" name="LED_PEN" />
            <blockpin signalname="led_sout" name="led_sout" />
        </block>
        <block symbolname="Seg7_Dev" name="U61">
            <blockpin signalname="LE_out(7:0)" name="LES(7:0)" />
            <blockpin signalname="SW_OK(1),Div(19:18)" name="Scan(2:0)" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="point_out(7:0)" name="point(7:0)" />
            <blockpin signalname="Div(25)" name="flash" />
            <blockpin signalname="SW_OK(0)" name="SW0" />
            <blockpin signalname="Disp_num(31:0)" name="Hexs(31:0)" />
        </block>
        <block symbolname="PIO" name="U71">
            <blockpin signalname="IO_clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="GPIOF0" name="EN" />
            <blockpin signalname="CPU2IO(31:0)" name="PData_in(31:0)" />
            <blockpin name="GPIOf0(21:0)" />
            <blockpin signalname="LED(7:0)" name="LED_out(7:0)" />
            <blockpin name="counter_set(1:0)" />
        </block>
        <block symbolname="buf" name="XLXI_15">
            <blockpin signalname="V5" name="I" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_16">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_17">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="Multi_CPU" name="U1">
            <blockpin signalname="Clk_CPU" name="clk" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="inst(31:0)" name="inst_out(31:0)" />
            <blockpin signalname="XLXN_130" name="INT" />
            <blockpin signalname="Addr_out(31:0)" name="Addr_out(31:0)" />
            <blockpin signalname="XLXN_86" name="mem_w" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="PC(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="V5" name="MIO_ready" />
            <blockpin name="CPU_MIO" />
            <blockpin signalname="State(4:0)" name="state(4:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="784" y="672" name="U9" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-200" type="instance" />
        </instance>
        <branch name="RSTN">
            <wire x2="816" y1="448" y2="448" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="448" name="RSTN" orien="R180" />
        <branch name="BTN_y(3:0)">
            <wire x2="816" y1="512" y2="512" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="512" name="BTN_y(3:0)" orien="R180" />
        <branch name="BTN_x(4:0)">
            <wire x2="816" y1="560" y2="560" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="560" name="BTN_x(4:0)" orien="R180" />
        <branch name="SW(15:0)">
            <wire x2="816" y1="608" y2="608" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="608" name="SW(15:0)" orien="R180" />
        <instance x="1888" y="688" name="M4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-176" type="instance" />
        </instance>
        <branch name="XLXN_5(4:0)">
            <wire x2="1888" y1="480" y2="480" x1="1184" />
        </branch>
        <branch name="CR">
            <wire x2="1328" y1="448" y2="448" x1="1184" />
        </branch>
        <iomarker fontsize="28" x="1328" y="448" name="CR" orien="R0" />
        <branch name="RDY">
            <wire x2="1760" y1="512" y2="512" x1="1184" />
            <wire x2="1888" y1="512" y2="512" x1="1760" />
            <wire x2="1760" y1="336" y2="512" x1="1760" />
            <wire x2="2080" y1="336" y2="336" x1="1760" />
        </branch>
        <iomarker fontsize="28" x="2080" y="336" name="RDY" orien="R0" />
        <branch name="Pulse(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="544" type="branch" />
            <wire x2="1200" y1="544" y2="544" x1="1184" />
        </branch>
        <branch name="BTN_OK(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1424" y="576" type="branch" />
            <wire x2="1392" y1="576" y2="576" x1="1184" />
            <wire x2="1424" y1="576" y2="576" x1="1392" />
            <wire x2="1520" y1="576" y2="576" x1="1424" />
            <wire x2="1392" y1="576" y2="1456" x1="1392" />
            <wire x2="1536" y1="1456" y2="1456" x1="1392" />
            <wire x2="1536" y1="1456" y2="1648" x1="1536" />
            <wire x2="1776" y1="1648" y2="1648" x1="1536" />
        </branch>
        <bustap x2="1616" y1="576" y2="576" x1="1520" />
        <branch name="BTN_OK(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1696" y="576" type="branch" />
            <wire x2="1696" y1="576" y2="576" x1="1616" />
            <wire x2="1888" y1="576" y2="576" x1="1696" />
        </branch>
        <branch name="SW_OK(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="624" type="branch" />
            <wire x2="1264" y1="624" y2="624" x1="1184" />
            <wire x2="1344" y1="624" y2="624" x1="1264" />
            <wire x2="1520" y1="624" y2="624" x1="1344" />
            <wire x2="1344" y1="624" y2="1392" x1="1344" />
            <wire x2="1344" y1="1392" y2="1488" x1="1344" />
            <wire x2="1504" y1="1488" y2="1488" x1="1344" />
            <wire x2="1504" y1="1488" y2="1696" x1="1504" />
            <wire x2="1776" y1="1696" y2="1696" x1="1504" />
            <wire x2="1856" y1="1392" y2="1392" x1="1344" />
        </branch>
        <bustap x2="1616" y1="624" y2="624" x1="1520" />
        <branch name="SW_OK(7:5),SW_OK(15),SW_OK(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="624" type="branch" />
            <wire x2="1632" y1="624" y2="624" x1="1616" />
            <wire x2="1888" y1="624" y2="624" x1="1632" />
        </branch>
        <branch name="readn">
            <wire x2="816" y1="640" y2="640" x1="768" />
            <wire x2="768" y1="640" y2="720" x1="768" />
            <wire x2="2272" y1="720" y2="720" x1="768" />
            <wire x2="2272" y1="448" y2="448" x1="2208" />
            <wire x2="2272" y1="448" y2="720" x1="2272" />
            <wire x2="2464" y1="448" y2="448" x1="2272" />
        </branch>
        <branch name="Ai(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="496" type="branch" />
            <wire x2="2304" y1="496" y2="496" x1="2208" />
        </branch>
        <branch name="Bi(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="560" type="branch" />
            <wire x2="2304" y1="560" y2="560" x1="2208" />
        </branch>
        <branch name="blink(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2304" y="624" type="branch" />
            <wire x2="2304" y1="624" y2="624" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="2464" y="448" name="readn" orien="R0" />
        <instance x="2848" y="752" name="U6" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-236" type="instance" />
        </instance>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="448" type="branch" />
            <wire x2="2848" y1="448" y2="448" x1="2768" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="480" type="branch" />
            <wire x2="2848" y1="480" y2="480" x1="2768" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="528" type="branch" />
            <wire x2="2848" y1="528" y2="528" x1="2768" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2768" y="592" type="branch" />
            <wire x2="2848" y1="592" y2="592" x1="2768" />
        </branch>
        <branch name="seg_clk">
            <wire x2="3312" y1="464" y2="464" x1="3232" />
        </branch>
        <branch name="seg_sout">
            <wire x2="3312" y1="528" y2="528" x1="3232" />
        </branch>
        <branch name="SEG_PEN">
            <wire x2="3312" y1="592" y2="592" x1="3232" />
        </branch>
        <branch name="seg_clrn">
            <wire x2="3312" y1="656" y2="656" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3312" y="464" name="seg_clk" orien="R0" />
        <iomarker fontsize="28" x="3312" y="528" name="seg_sout" orien="R0" />
        <iomarker fontsize="28" x="3312" y="592" name="SEG_PEN" orien="R0" />
        <iomarker fontsize="28" x="3312" y="656" name="seg_clrn" orien="R0" />
        <instance x="864" y="960" name="U8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="112" y="-80" type="instance" />
        </instance>
        <iomarker fontsize="28" x="288" y="1056" name="clk_100mhz" orien="R180" />
        <branch name="clk_100mhz">
            <wire x2="352" y1="1056" y2="1056" x1="288" />
            <wire x2="704" y1="1056" y2="1056" x1="352" />
            <wire x2="1648" y1="1056" y2="1056" x1="704" />
            <wire x2="1648" y1="1056" y2="1520" x1="1648" />
            <wire x2="1776" y1="1520" y2="1520" x1="1648" />
            <wire x2="352" y1="1056" y2="2832" x1="352" />
            <wire x2="400" y1="2832" y2="2832" x1="352" />
            <wire x2="624" y1="2832" y2="2832" x1="400" />
            <wire x2="736" y1="2832" y2="2832" x1="624" />
            <wire x2="704" y1="368" y2="480" x1="704" />
            <wire x2="816" y1="480" y2="480" x1="704" />
            <wire x2="704" y1="480" y2="848" x1="704" />
            <wire x2="704" y1="848" y2="1056" x1="704" />
            <wire x2="864" y1="848" y2="848" x1="704" />
            <wire x2="1696" y1="368" y2="368" x1="704" />
            <wire x2="1696" y1="368" y2="448" x1="1696" />
            <wire x2="1888" y1="448" y2="448" x1="1696" />
            <wire x2="2752" y1="288" y2="288" x1="1696" />
            <wire x2="2752" y1="288" y2="416" x1="2752" />
            <wire x2="2848" y1="416" y2="416" x1="2752" />
            <wire x2="1696" y1="288" y2="368" x1="1696" />
        </branch>
        <branch name="SW_OK(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="592" y="928" type="branch" />
            <wire x2="864" y1="928" y2="928" x1="592" />
        </branch>
        <branch name="Clk_CPU">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="928" type="branch" />
            <wire x2="656" y1="1360" y2="1520" x1="656" />
            <wire x2="720" y1="1520" y2="1520" x1="656" />
            <wire x2="1296" y1="1360" y2="1360" x1="656" />
            <wire x2="1216" y1="928" y2="928" x1="1184" />
            <wire x2="1296" y1="928" y2="928" x1="1216" />
            <wire x2="1584" y1="928" y2="928" x1="1296" />
            <wire x2="1296" y1="928" y2="1360" x1="1296" />
        </branch>
        <instance x="1584" y="960" name="XLXI_6" orien="R0" />
        <instance x="736" y="2560" name="U3" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="224" y="124" type="instance" />
        </instance>
        <instance x="2832" y="1920" name="U5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-368" type="instance" />
        </instance>
        <instance x="3856" y="656" name="U61" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-32" type="instance" />
        </instance>
        <instance x="3584" y="2992" name="U71" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="176" y="-192" type="instance" />
        </instance>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="3184" type="branch" />
            <wire x2="1056" y1="3184" y2="3184" x1="656" />
        </branch>
        <instance x="1056" y="3216" name="XLXI_15" orien="R0" />
        <branch name="Buzzer">
            <wire x2="1376" y1="3184" y2="3184" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="1376" y="3184" name="Buzzer" orien="R0" />
        <branch name="IO_clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="2768" type="branch" />
            <wire x2="3616" y1="2768" y2="2768" x1="3392" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="2832" type="branch" />
            <wire x2="3616" y1="2832" y2="2832" x1="3392" />
        </branch>
        <branch name="GPIOF0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="2896" type="branch" />
            <wire x2="3616" y1="2896" y2="2896" x1="3392" />
        </branch>
        <branch name="CPU2IO(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3392" y="2960" type="branch" />
            <wire x2="3616" y1="2960" y2="2960" x1="3392" />
        </branch>
        <branch name="LED(7:0)">
            <wire x2="4256" y1="2864" y2="2864" x1="4064" />
        </branch>
        <iomarker fontsize="28" x="4256" y="2864" name="LED(7:0)" orien="R0" />
        <branch name="SW_OK(1),Div(19:18)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3744" y="448" type="branch" />
            <wire x2="3856" y1="448" y2="448" x1="3744" />
        </branch>
        <branch name="SW_OK(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3744" y="480" type="branch" />
            <wire x2="3856" y1="480" y2="480" x1="3744" />
        </branch>
        <branch name="Div(25)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3744" y="512" type="branch" />
            <wire x2="3856" y1="512" y2="512" x1="3744" />
        </branch>
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3744" y="560" type="branch" />
            <wire x2="3856" y1="560" y2="560" x1="3744" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3744" y="592" type="branch" />
            <wire x2="3856" y1="592" y2="592" x1="3744" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3744" y="624" type="branch" />
            <wire x2="3856" y1="624" y2="624" x1="3744" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="4368" y1="464" y2="464" x1="4208" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="4368" y1="592" y2="592" x1="4208" />
        </branch>
        <iomarker fontsize="28" x="4368" y="464" name="SEGMENT(7:0)" orien="R0" />
        <iomarker fontsize="28" x="4368" y="592" name="AN(3:0)" orien="R0" />
        <branch name="Disp_num(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="864" type="branch" />
            <wire x2="2848" y1="640" y2="640" x1="2736" />
            <wire x2="2736" y1="640" y2="864" x1="2736" />
            <wire x2="2896" y1="864" y2="864" x1="2736" />
            <wire x2="3280" y1="864" y2="864" x1="2896" />
            <wire x2="3280" y1="864" y2="1296" x1="3280" />
            <wire x2="3280" y1="1296" y2="1296" x1="3216" />
        </branch>
        <branch name="point_out(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="832" type="branch" />
            <wire x2="2848" y1="672" y2="672" x1="2768" />
            <wire x2="2768" y1="672" y2="832" x1="2768" />
            <wire x2="2896" y1="832" y2="832" x1="2768" />
            <wire x2="3312" y1="832" y2="832" x1="2896" />
            <wire x2="3312" y1="832" y2="1344" x1="3312" />
            <wire x2="3312" y1="1344" y2="1344" x1="3216" />
        </branch>
        <branch name="LE_out(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2896" y="800" type="branch" />
            <wire x2="2848" y1="704" y2="704" x1="2800" />
            <wire x2="2800" y1="704" y2="800" x1="2800" />
            <wire x2="2896" y1="800" y2="800" x1="2800" />
            <wire x2="3344" y1="800" y2="800" x1="2896" />
            <wire x2="3344" y1="800" y2="1392" x1="3344" />
            <wire x2="3344" y1="1392" y2="1392" x1="3216" />
        </branch>
        <instance x="3712" y="864" name="XLXI_16" orien="R0" />
        <instance x="3712" y="1136" name="XLXI_17" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3808" y="880" type="branch" />
            <wire x2="3776" y1="864" y2="880" x1="3776" />
            <wire x2="3808" y1="880" y2="880" x1="3776" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3808" y="992" type="branch" />
            <wire x2="3776" y1="992" y2="1008" x1="3776" />
            <wire x2="3808" y1="992" y2="992" x1="3776" />
        </branch>
        <branch name="CPU2IO(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1552" type="branch" />
            <wire x2="1776" y1="3008" y2="3008" x1="1696" />
            <wire x2="1696" y1="3008" y2="3248" x1="1696" />
            <wire x2="2448" y1="3248" y2="3248" x1="1696" />
            <wire x2="2368" y1="1552" y2="1552" x1="2272" />
            <wire x2="2448" y1="1552" y2="1552" x1="2368" />
            <wire x2="2448" y1="1552" y2="2352" x1="2448" />
            <wire x2="2448" y1="2352" y2="3248" x1="2448" />
            <wire x2="2800" y1="2352" y2="2352" x1="2448" />
            <wire x2="2832" y1="1552" y2="1552" x1="2448" />
        </branch>
        <instance x="1744" y="2320" name="U4" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="400" y="-432" type="instance" />
        </instance>
        <instance x="1776" y="3104" name="U10" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="240" y="-288" type="instance" />
        </instance>
        <branch name="IO_clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="928" type="branch" />
            <wire x2="1696" y1="2480" y2="2624" x1="1696" />
            <wire x2="1776" y1="2624" y2="2624" x1="1696" />
            <wire x2="2544" y1="2480" y2="2480" x1="1696" />
            <wire x2="1856" y1="928" y2="928" x1="1808" />
            <wire x2="2432" y1="928" y2="928" x1="1856" />
            <wire x2="2432" y1="928" y2="1248" x1="2432" />
            <wire x2="2544" y1="1248" y2="1248" x1="2432" />
            <wire x2="2832" y1="1248" y2="1248" x1="2544" />
            <wire x2="2544" y1="1248" y2="2160" x1="2544" />
            <wire x2="2544" y1="2160" y2="2480" x1="2544" />
            <wire x2="2800" y1="2160" y2="2160" x1="2544" />
        </branch>
        <branch name="rst">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="656" type="branch" />
            <wire x2="592" y1="1296" y2="1568" x1="592" />
            <wire x2="720" y1="1568" y2="1568" x1="592" />
            <wire x2="768" y1="1296" y2="1296" x1="592" />
            <wire x2="1600" y1="1296" y2="1296" x1="768" />
            <wire x2="1600" y1="1296" y2="1584" x1="1600" />
            <wire x2="1776" y1="1584" y2="1584" x1="1600" />
            <wire x2="1600" y1="1584" y2="2688" x1="1600" />
            <wire x2="1776" y1="2688" y2="2688" x1="1600" />
            <wire x2="2512" y1="1296" y2="1296" x1="1600" />
            <wire x2="2512" y1="1296" y2="2208" x1="2512" />
            <wire x2="2800" y1="2208" y2="2208" x1="2512" />
            <wire x2="2832" y1="1296" y2="1296" x1="2512" />
            <wire x2="1264" y1="768" y2="768" x1="768" />
            <wire x2="768" y1="768" y2="880" x1="768" />
            <wire x2="768" y1="880" y2="1296" x1="768" />
            <wire x2="864" y1="880" y2="880" x1="768" />
            <wire x2="1216" y1="656" y2="656" x1="1184" />
            <wire x2="1264" y1="656" y2="656" x1="1216" />
            <wire x2="1264" y1="656" y2="768" x1="1264" />
        </branch>
        <branch name="Div(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1504" y="848" type="branch" />
            <wire x2="1456" y1="848" y2="848" x1="1184" />
            <wire x2="1504" y1="848" y2="848" x1="1456" />
            <wire x2="1456" y1="848" y2="2752" x1="1456" />
            <wire x2="1456" y1="2752" y2="2816" x1="1456" />
            <wire x2="1456" y1="2816" y2="2880" x1="1456" />
        </branch>
        <bustap x2="1552" y1="2752" y2="2752" x1="1456" />
        <bustap x2="1552" y1="2816" y2="2816" x1="1456" />
        <bustap x2="1552" y1="2880" y2="2880" x1="1456" />
        <branch name="Div(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="2752" type="branch" />
            <wire x2="1616" y1="2752" y2="2752" x1="1552" />
            <wire x2="1776" y1="2752" y2="2752" x1="1616" />
        </branch>
        <branch name="Div(9)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="2816" type="branch" />
            <wire x2="1632" y1="2816" y2="2816" x1="1552" />
            <wire x2="1776" y1="2816" y2="2816" x1="1632" />
        </branch>
        <branch name="Div(11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="2880" type="branch" />
            <wire x2="1648" y1="2880" y2="2880" x1="1552" />
            <wire x2="1776" y1="2880" y2="2880" x1="1648" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="496" y="1920" type="branch" />
            <wire x2="528" y1="1920" y2="1920" x1="496" />
            <wire x2="720" y1="1920" y2="1920" x1="528" />
        </branch>
        <branch name="XLXN_78(9:0)">
            <wire x2="704" y1="2544" y2="2640" x1="704" />
            <wire x2="736" y1="2640" y2="2640" x1="704" />
            <wire x2="1376" y1="2544" y2="2544" x1="704" />
            <wire x2="1776" y1="2208" y2="2208" x1="1376" />
            <wire x2="1376" y1="2208" y2="2544" x1="1376" />
        </branch>
        <branch name="XLXN_80(31:0)">
            <wire x2="1408" y1="2704" y2="2704" x1="1184" />
            <wire x2="1776" y1="2256" y2="2256" x1="1408" />
            <wire x2="1408" y1="2256" y2="2704" x1="1408" />
        </branch>
        <branch name="XLXN_82(0:0)">
            <wire x2="672" y1="2512" y2="2704" x1="672" />
            <wire x2="736" y1="2704" y2="2704" x1="672" />
            <wire x2="1344" y1="2512" y2="2512" x1="672" />
            <wire x2="1776" y1="2160" y2="2160" x1="1344" />
            <wire x2="1344" y1="2160" y2="2512" x1="1344" />
        </branch>
        <branch name="XLXN_84(31:0)">
            <wire x2="640" y1="2480" y2="2784" x1="640" />
            <wire x2="736" y1="2784" y2="2784" x1="640" />
            <wire x2="1312" y1="2480" y2="2480" x1="640" />
            <wire x2="1776" y1="2112" y2="2112" x1="1312" />
            <wire x2="1312" y1="2112" y2="2480" x1="1312" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="1424" y1="1536" y2="1536" x1="1168" />
            <wire x2="1424" y1="1536" y2="1776" x1="1424" />
            <wire x2="1760" y1="1776" y2="1776" x1="1424" />
            <wire x2="1776" y1="1776" y2="1776" x1="1760" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1600" type="branch" />
            <wire x2="1248" y1="1600" y2="1600" x1="1168" />
            <wire x2="1376" y1="1600" y2="1600" x1="1248" />
            <wire x2="1376" y1="1600" y2="1840" x1="1376" />
            <wire x2="1776" y1="1840" y2="1840" x1="1376" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1664" type="branch" />
            <wire x2="1264" y1="1664" y2="1664" x1="1168" />
            <wire x2="1328" y1="1664" y2="1664" x1="1264" />
            <wire x2="1328" y1="1664" y2="1904" x1="1328" />
            <wire x2="1776" y1="1904" y2="1904" x1="1328" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1728" type="branch" />
            <wire x2="1264" y1="1728" y2="1728" x1="1168" />
            <wire x2="1280" y1="1728" y2="1728" x1="1264" />
            <wire x2="1280" y1="1728" y2="1968" x1="1280" />
            <wire x2="1776" y1="1968" y2="1968" x1="1280" />
        </branch>
        <instance x="2768" y="2384" name="U7" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-164" type="instance" />
        </instance>
        <branch name="XLXN_93">
            <wire x2="2384" y1="1600" y2="1600" x1="2272" />
            <wire x2="2384" y1="1344" y2="1600" x1="2384" />
            <wire x2="2832" y1="1344" y2="1344" x1="2384" />
        </branch>
        <branch name="SW_OK(7:5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1392" type="branch" />
            <wire x2="2160" y1="1392" y2="1392" x1="1952" />
            <wire x2="2832" y1="1392" y2="1392" x1="2160" />
        </branch>
        <bustap x2="1952" y1="1392" y2="1392" x1="1856" />
        <branch name="GPIOF0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1648" type="branch" />
            <wire x2="2352" y1="1648" y2="1648" x1="2272" />
            <wire x2="2480" y1="1648" y2="1648" x1="2352" />
            <wire x2="2480" y1="1648" y2="2256" x1="2480" />
            <wire x2="2800" y1="2256" y2="2256" x1="2480" />
        </branch>
        <branch name="LED_out(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="1952" type="branch" />
            <wire x2="2336" y1="1952" y2="1952" x1="2272" />
            <wire x2="3440" y1="1952" y2="1952" x1="2336" />
            <wire x2="3440" y1="1952" y2="2192" x1="3440" />
            <wire x2="3440" y1="2192" y2="2192" x1="3232" />
        </branch>
        <branch name="XLXN_99">
            <wire x2="2288" y1="2448" y2="2448" x1="1648" />
            <wire x2="1648" y1="2448" y2="2944" x1="1648" />
            <wire x2="1776" y1="2944" y2="2944" x1="1648" />
            <wire x2="2288" y1="2256" y2="2256" x1="2272" />
            <wire x2="2288" y1="2256" y2="2448" x1="2288" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="2128" type="branch" />
            <wire x2="2352" y1="2128" y2="2128" x1="2272" />
            <wire x2="2416" y1="2128" y2="2128" x1="2352" />
            <wire x2="2416" y1="2128" y2="3056" x1="2416" />
            <wire x2="2416" y1="3056" y2="3056" x1="2288" />
        </branch>
        <branch name="XLXN_103">
            <wire x2="2384" y1="2160" y2="2160" x1="2272" />
            <wire x2="2384" y1="2160" y2="2912" x1="2384" />
            <wire x2="2384" y1="2912" y2="2912" x1="2288" />
        </branch>
        <branch name="XLXN_101">
            <wire x2="2352" y1="2192" y2="2192" x1="2272" />
            <wire x2="2352" y1="2192" y2="2768" x1="2352" />
            <wire x2="2352" y1="2768" y2="2768" x1="2288" />
        </branch>
        <branch name="XLXN_110(1:0)">
            <wire x2="1776" y1="3072" y2="3072" x1="1744" />
            <wire x2="1744" y1="3072" y2="3200" x1="1744" />
            <wire x2="2576" y1="3200" y2="3200" x1="1744" />
            <wire x2="2576" y1="2096" y2="3200" x1="2576" />
            <wire x2="3296" y1="2096" y2="2096" x1="2576" />
            <wire x2="3296" y1="2096" y2="2160" x1="3296" />
            <wire x2="3296" y1="2160" y2="2160" x1="3232" />
        </branch>
        <branch name="Div(31:0),Div(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1456" type="branch" />
            <wire x2="2832" y1="1456" y2="1456" x1="2752" />
        </branch>
        <branch name="XLXN_113(63:0)">
            <wire x2="2832" y1="1504" y2="1504" x1="2752" />
        </branch>
        <branch name="N0,N0,PC(31:2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1600" type="branch" />
            <wire x2="2832" y1="1600" y2="1600" x1="2752" />
        </branch>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1648" type="branch" />
            <wire x2="2832" y1="1648" y2="1648" x1="2752" />
        </branch>
        <branch name="Counter_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1696" type="branch" />
            <wire x2="2832" y1="1696" y2="1696" x1="2752" />
        </branch>
        <branch name="Addr_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1744" type="branch" />
            <wire x2="2832" y1="1744" y2="1744" x1="2752" />
        </branch>
        <branch name="Data_out(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1792" type="branch" />
            <wire x2="2832" y1="1792" y2="1792" x1="2752" />
        </branch>
        <branch name="Data_in(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1840" type="branch" />
            <wire x2="2832" y1="1840" y2="1840" x1="2752" />
        </branch>
        <branch name="PC(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="1888" type="branch" />
            <wire x2="2832" y1="1888" y2="1888" x1="2752" />
        </branch>
        <branch name="Div(20)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2752" y="2304" type="branch" />
            <wire x2="2800" y1="2304" y2="2304" x1="2752" />
        </branch>
        <branch name="led_clk">
            <wire x2="3344" y1="2256" y2="2256" x1="3232" />
        </branch>
        <branch name="led_sout">
            <wire x2="3344" y1="2288" y2="2288" x1="3232" />
        </branch>
        <branch name="LED_PEN">
            <wire x2="3344" y1="2320" y2="2320" x1="3232" />
        </branch>
        <branch name="led_clrn">
            <wire x2="3344" y1="2352" y2="2352" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3344" y="2256" name="led_clk" orien="R0" />
        <iomarker fontsize="28" x="3344" y="2288" name="led_sout" orien="R0" />
        <iomarker fontsize="28" x="3344" y="2320" name="LED_PEN" orien="R0" />
        <iomarker fontsize="28" x="3344" y="2352" name="led_clrn" orien="R0" />
        <branch name="XLXN_130">
            <wire x2="720" y1="1808" y2="1808" x1="656" />
            <wire x2="656" y1="1808" y2="2416" x1="656" />
            <wire x2="2320" y1="2416" y2="2416" x1="656" />
            <wire x2="2320" y1="2416" y2="2624" x1="2320" />
            <wire x2="2320" y1="2224" y2="2224" x1="2272" />
            <wire x2="2320" y1="2224" y2="2416" x1="2320" />
            <wire x2="2320" y1="2624" y2="2624" x1="2288" />
        </branch>
        <instance x="768" y="2032" name="U1" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="112" y="-464" type="instance" />
        </instance>
        <branch name="inst(31:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="496" y="1648" type="branch" />
            <wire x2="512" y1="1648" y2="1648" x1="496" />
            <wire x2="592" y1="1648" y2="1648" x1="512" />
            <wire x2="720" y1="1648" y2="1648" x1="592" />
        </branch>
        <branch name="State(4:0)">
            <wire x2="1248" y1="1872" y2="1872" x1="1168" />
            <wire x2="1248" y1="1872" y2="2016" x1="1248" />
            <wire x2="1328" y1="2016" y2="2016" x1="1248" />
        </branch>
        <branch name="V5">
            <wire x2="1184" y1="1968" y2="1968" x1="1168" />
            <wire x2="1184" y1="1968" y2="2048" x1="1184" />
            <wire x2="1216" y1="2048" y2="2048" x1="1184" />
        </branch>
    </sheet>
</drawing>