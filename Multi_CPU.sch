<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(2:0)" />
        <signal name="XLXN_2(1:0)" />
        <signal name="XLXN_3(1:0)" />
        <signal name="XLXN_4(1:0)" />
        <signal name="XLXN_5(1:0)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="Data_in(31:0)" />
        <signal name="INT" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="CPU_MIO" />
        <signal name="MIO_ready" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_27" />
        <signal name="mem_w" />
        <signal name="state(4:0)" />
        <signal name="PC_out(31:0)" />
        <signal name="inst_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="Addr_out(31:0)" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="INT" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="CPU_MIO" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Output" name="mem_w" />
        <port polarity="Output" name="state(4:0)" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Output" name="inst_out(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Output" name="Addr_out(31:0)" />
        <blockdef name="M_datapath">
            <timestamp>2015-5-30T16:1:52</timestamp>
            <rect style="fillcolor:rgb(0,255,255);fillstyle:Solid" width="400" x="64" y="-1024" height="1024" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-928" y2="-928" x1="64" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="528" y1="-992" y2="-992" x1="464" />
            <line x2="528" y1="-800" y2="-800" x1="464" />
            <rect width="64" x="464" y="-620" height="24" />
            <line x2="528" y1="-608" y2="-608" x1="464" />
            <rect width="64" x="464" y="-428" height="24" />
            <line x2="528" y1="-416" y2="-416" x1="464" />
            <rect width="64" x="464" y="-236" height="24" />
            <line x2="528" y1="-224" y2="-224" x1="464" />
            <rect width="64" x="464" y="-44" height="24" />
            <line x2="528" y1="-32" y2="-32" x1="464" />
        </blockdef>
        <blockdef name="ctrl">
            <timestamp>2015-5-30T12:22:0</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="352" x="64" y="-1024" height="1024" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-992" y2="-992" x1="416" />
            <line x2="480" y1="-928" y2="-928" x1="416" />
            <line x2="480" y1="-864" y2="-864" x1="416" />
            <line x2="480" y1="-800" y2="-800" x1="416" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <line x2="480" y1="-480" y2="-480" x1="416" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <rect width="64" x="416" y="-364" height="24" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
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
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <block symbolname="M_datapath" name="U1_2">
            <attr value="M_datapath" name="VeriModel" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="XLXN_6" name="IorD" />
            <blockpin signalname="XLXN_7" name="IRWrite" />
            <blockpin signalname="XLXN_8" name="RegWrite" />
            <blockpin signalname="XLXN_9" name="ALUSrcA" />
            <blockpin signalname="XLXN_10" name="PCWrite" />
            <blockpin signalname="XLXN_11" name="PCWriteCond" />
            <blockpin signalname="XLXN_12" name="Branch" />
            <blockpin signalname="XLXN_5(1:0)" name="RegDst(1:0)" />
            <blockpin signalname="XLXN_4(1:0)" name="MemtoReg(1:0)" />
            <blockpin signalname="XLXN_3(1:0)" name="ALUSrcB(1:0)" />
            <blockpin signalname="XLXN_2(1:0)" name="PCSource(1:0)" />
            <blockpin signalname="XLXN_1(2:0)" name="ALU_operation(2:0)" />
            <blockpin signalname="Data_in(31:0)" name="data2CPU(31:0)" />
            <blockpin signalname="XLXN_19" name="zero" />
            <blockpin signalname="XLXN_20" name="overflow" />
            <blockpin signalname="PC_out(31:0)" name="PC_Current(31:0)" />
            <blockpin signalname="inst_out(31:0)" name="Inst(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="data_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="M_addr(31:0)" />
        </block>
        <block symbolname="ctrl" name="U11">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="XLXN_19" name="zero" />
            <blockpin signalname="XLXN_20" name="overflow" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="inst_out(31:0)" name="Inst_in(31:0)" />
            <blockpin signalname="XLXN_21" name="MemRead" />
            <blockpin signalname="XLXN_22" name="MemWrite" />
            <blockpin signalname="CPU_MIO" name="CPU_MIO" />
            <blockpin signalname="XLXN_6" name="IorD" />
            <blockpin signalname="XLXN_7" name="IRWrite" />
            <blockpin signalname="XLXN_8" name="RegWrite" />
            <blockpin signalname="XLXN_9" name="ALUSrcA" />
            <blockpin signalname="XLXN_10" name="PCWrite" />
            <blockpin signalname="XLXN_11" name="PCWriteCond" />
            <blockpin signalname="XLXN_12" name="Branch" />
            <blockpin signalname="XLXN_5(1:0)" name="RegDst(1:0)" />
            <blockpin signalname="XLXN_4(1:0)" name="MemtoReg(1:0)" />
            <blockpin signalname="XLXN_3(1:0)" name="ALUSrcB(1:0)" />
            <blockpin signalname="XLXN_2(1:0)" name="PCSource(1:0)" />
            <blockpin signalname="XLXN_1(2:0)" name="ALU_operation(2:0)" />
            <blockpin signalname="state(4:0)" name="state_out(4:0)" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_21" name="I" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_22" name="I0" />
            <blockpin signalname="XLXN_27" name="I1" />
            <blockpin signalname="mem_w" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1792" y="1696" name="U1_2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="256" y="-880" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="VeriModel" x="0" y="-1024" type="instance" />
        </instance>
        <instance x="928" y="1696" name="U11" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-880" type="instance" />
        </instance>
        <branch name="XLXN_1(2:0)">
            <wire x2="1792" y1="1600" y2="1600" x1="1408" />
        </branch>
        <branch name="XLXN_2(1:0)">
            <wire x2="1792" y1="1536" y2="1536" x1="1408" />
        </branch>
        <branch name="XLXN_3(1:0)">
            <wire x2="1792" y1="1472" y2="1472" x1="1408" />
        </branch>
        <branch name="XLXN_4(1:0)">
            <wire x2="1792" y1="1408" y2="1408" x1="1408" />
        </branch>
        <branch name="XLXN_5(1:0)">
            <wire x2="1792" y1="1344" y2="1344" x1="1408" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1792" y1="896" y2="896" x1="1408" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1792" y1="960" y2="960" x1="1408" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1792" y1="1024" y2="1024" x1="1408" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1792" y1="1088" y2="1088" x1="1408" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1792" y1="1152" y2="1152" x1="1408" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1792" y1="1216" y2="1216" x1="1408" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1792" y1="1280" y2="1280" x1="1408" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="1744" y1="2000" y2="2000" x1="704" />
            <wire x2="1792" y1="1664" y2="1664" x1="1744" />
            <wire x2="1744" y1="1664" y2="2000" x1="1744" />
        </branch>
        <iomarker fontsize="28" x="704" y="2000" name="Data_in(31:0)" orien="R180" />
        <branch name="INT">
            <wire x2="816" y1="192" y2="192" x1="544" />
        </branch>
        <iomarker fontsize="28" x="544" y="192" name="INT" orien="R180" />
        <branch name="clk">
            <wire x2="928" y1="416" y2="416" x1="512" />
            <wire x2="928" y1="416" y2="704" x1="928" />
            <wire x2="1728" y1="416" y2="416" x1="928" />
            <wire x2="1728" y1="416" y2="704" x1="1728" />
            <wire x2="1792" y1="704" y2="704" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="512" y="416" name="clk" orien="R180" />
        <branch name="reset">
            <wire x2="896" y1="496" y2="496" x1="480" />
            <wire x2="896" y1="496" y2="896" x1="896" />
            <wire x2="928" y1="896" y2="896" x1="896" />
            <wire x2="1696" y1="496" y2="496" x1="896" />
            <wire x2="1696" y1="496" y2="768" x1="1696" />
            <wire x2="1792" y1="768" y2="768" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="480" y="496" name="reset" orien="R180" />
        <branch name="CPU_MIO">
            <wire x2="1552" y1="832" y2="832" x1="1408" />
            <wire x2="1552" y1="832" y2="1872" x1="1552" />
            <wire x2="2784" y1="1872" y2="1872" x1="1552" />
        </branch>
        <iomarker fontsize="28" x="2784" y="1872" name="CPU_MIO" orien="R0" />
        <branch name="MIO_ready">
            <wire x2="512" y1="576" y2="576" x1="432" />
            <wire x2="512" y1="576" y2="1472" x1="512" />
            <wire x2="928" y1="1472" y2="1472" x1="512" />
            <wire x2="1632" y1="576" y2="576" x1="512" />
            <wire x2="1632" y1="576" y2="832" x1="1632" />
            <wire x2="1792" y1="832" y2="832" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="432" y="576" name="MIO_ready" orien="R180" />
        <branch name="XLXN_19">
            <wire x2="864" y1="608" y2="1088" x1="864" />
            <wire x2="928" y1="1088" y2="1088" x1="864" />
            <wire x2="2384" y1="608" y2="608" x1="864" />
            <wire x2="2384" y1="608" y2="704" x1="2384" />
            <wire x2="2384" y1="704" y2="704" x1="2320" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="928" y1="1280" y2="1280" x1="880" />
            <wire x2="880" y1="1280" y2="1776" x1="880" />
            <wire x2="2368" y1="1776" y2="1776" x1="880" />
            <wire x2="2368" y1="896" y2="896" x1="2320" />
            <wire x2="2368" y1="896" y2="1776" x1="2368" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1520" y1="704" y2="704" x1="1408" />
            <wire x2="1520" y1="448" y2="704" x1="1520" />
            <wire x2="1936" y1="448" y2="448" x1="1520" />
        </branch>
        <instance x="1936" y="480" name="XLXI_4" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="1584" y1="768" y2="768" x1="1408" />
            <wire x2="1584" y1="512" y2="768" x1="1584" />
            <wire x2="2480" y1="512" y2="512" x1="1584" />
            <wire x2="2480" y1="512" y2="752" x1="2480" />
            <wire x2="2752" y1="752" y2="752" x1="2480" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2576" y1="448" y2="448" x1="2160" />
            <wire x2="2576" y1="448" y2="688" x1="2576" />
            <wire x2="2752" y1="688" y2="688" x1="2576" />
        </branch>
        <instance x="2752" y="816" name="XLXI_5" orien="R0" />
        <branch name="mem_w">
            <wire x2="3040" y1="720" y2="720" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3040" y="720" name="mem_w" orien="R0" />
        <branch name="state(4:0)">
            <wire x2="1488" y1="1664" y2="1664" x1="1408" />
            <wire x2="1488" y1="1664" y2="2064" x1="1488" />
            <wire x2="2784" y1="2064" y2="2064" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="2784" y="2064" name="state(4:0)" orien="R0" />
        <branch name="PC_out(31:0)">
            <wire x2="2768" y1="1088" y2="1088" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2768" y="1088" name="PC_out(31:0)" orien="R0" />
        <branch name="inst_out(31:0)">
            <wire x2="928" y1="1664" y2="1664" x1="912" />
            <wire x2="912" y1="1664" y2="1840" x1="912" />
            <wire x2="2432" y1="1840" y2="1840" x1="912" />
            <wire x2="2432" y1="1280" y2="1280" x1="2320" />
            <wire x2="2768" y1="1280" y2="1280" x1="2432" />
            <wire x2="2432" y1="1280" y2="1840" x1="2432" />
        </branch>
        <iomarker fontsize="28" x="2768" y="1280" name="inst_out(31:0)" orien="R0" />
        <branch name="Data_out(31:0)">
            <wire x2="2784" y1="1472" y2="1472" x1="2320" />
        </branch>
        <branch name="Addr_out(31:0)">
            <wire x2="2784" y1="1664" y2="1664" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2784" y="1472" name="Data_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="2784" y="1664" name="Addr_out(31:0)" orien="R0" />
    </sheet>
</drawing>