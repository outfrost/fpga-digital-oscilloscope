<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23(8:0)" />
        <signal name="XLXN_24(9:0)" />
        <signal name="XLXN_25(8:0)" />
        <signal name="XLXN_26(9:0)" />
        <signal name="XLXN_27" />
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="VGA_B" />
        <signal name="VGA_G" />
        <signal name="VGA_R" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_55(7:0)" />
        <signal name="XLXN_56" />
        <signal name="XLXN_58(13:0)" />
        <signal name="XLXN_59(13:0)" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SCK" />
        <signal name="AD_CONV" />
        <signal name="AMP_CS" />
        <signal name="AMP_DOUT" />
        <signal name="AMP_SHDN" />
        <signal name="DAC_CLR" />
        <signal name="DAC_CS" />
        <signal name="SPI_SS_B" />
        <signal name="FPGA_INIT_B" />
        <signal name="HOLD" />
        <signal name="SF_CE0" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Input" name="AMP_DOUT" />
        <port polarity="Output" name="AMP_SHDN" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Input" name="HOLD" />
        <port polarity="Output" name="SF_CE0" />
        <blockdef name="VGACtl">
            <timestamp>2018-3-20T15:27:51</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="384" />
        </blockdef>
        <blockdef name="SampleMemory">
            <timestamp>2018-3-20T15:23:50</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="ADC_Ctrl">
            <timestamp>2018-3-20T15:33:53</timestamp>
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="416" y1="-800" y2="-800" x1="480" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-12" height="24" />
            <line x2="480" y1="0" y2="0" x1="416" />
            <rect width="64" x="416" y="52" height="24" />
            <line x2="480" y1="64" y2="64" x1="416" />
            <line x2="480" y1="128" y2="128" x1="416" />
            <line x2="0" y1="128" y2="128" x1="64" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <line x2="416" y1="-480" y2="-480" x1="480" />
            <line x2="0" y1="-640" y2="-640" x1="64" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <rect width="352" x="64" y="-832" height="992" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
        </blockdef>
        <blockdef name="Sampler">
            <timestamp>2018-3-20T16:51:34</timestamp>
            <rect width="368" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="496" y1="-352" y2="-352" x1="432" />
            <line x2="496" y1="-288" y2="-288" x1="432" />
            <line x2="496" y1="-224" y2="-224" x1="432" />
            <rect width="64" x="432" y="-172" height="24" />
            <line x2="496" y1="-160" y2="-160" x1="432" />
            <rect width="64" x="432" y="-108" height="24" />
            <line x2="496" y1="-96" y2="-96" x1="432" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <block symbolname="ADC_Ctrl" name="XLXI_7">
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="XLXN_56" name="AMP_WE" />
            <blockpin signalname="XLXN_51" name="ADC_Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="AMP_DOUT" name="AMP_DOUT" />
            <blockpin signalname="XLXN_55(7:0)" name="AMP_DI(7:0)" />
            <blockpin signalname="XLXN_60" name="Busy" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AMP_SHDN" name="AMP_SHDN" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin signalname="XLXN_58(13:0)" name="ADC_DOA(13:0)" />
            <blockpin name="ADC_DOB(13:0)" />
            <blockpin name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
        </block>
        <block symbolname="SampleMemory" name="XLXI_6">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_27" name="Write_Enable" />
            <blockpin signalname="XLXN_26(9:0)" name="Write_Addr(9:0)" />
            <blockpin signalname="XLXN_25(8:0)" name="Write_Data(8:0)" />
            <blockpin signalname="XLXN_24(9:0)" name="Read_Addr(9:0)" />
            <blockpin signalname="XLXN_23(8:0)" name="Read_Data(8:0)" />
        </block>
        <block symbolname="VGACtl" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="PixelClk_50MHz" />
            <blockpin signalname="VGA_R" name="VGA_R" />
            <blockpin signalname="VGA_G" name="VGA_G" />
            <blockpin signalname="VGA_B" name="VGA_B" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_23(8:0)" name="Sample_Data(8:0)" />
            <blockpin signalname="XLXN_24(9:0)" name="Sample_Addr(9:0)" />
        </block>
        <block symbolname="Sampler" name="XLXI_10">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_60" name="ADC_Busy" />
            <blockpin signalname="HOLD" name="Hold" />
            <blockpin signalname="XLXN_58(13:0)" name="ADC_Data(13:0)" />
            <blockpin signalname="XLXN_27" name="Sample_WE" />
            <blockpin signalname="XLXN_56" name="AMP_WE" />
            <blockpin signalname="XLXN_51" name="ADC_Start" />
            <blockpin signalname="XLXN_26(9:0)" name="Sample_Addr(9:0)" />
            <blockpin signalname="XLXN_25(8:0)" name="Sample_Data(8:0)" />
            <blockpin signalname="XLXN_55(7:0)" name="AMP_Data(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <iomarker fontsize="28" x="208" y="128" name="Clk_50MHz" orien="R180" />
        <instance x="336" y="1072" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1216" y="960" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_25(8:0)">
            <wire x2="1936" y1="864" y2="864" x1="1712" />
        </branch>
        <branch name="XLXN_26(9:0)">
            <wire x2="1936" y1="800" y2="800" x1="1712" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="304" y1="128" y2="128" x1="208" />
            <wire x2="304" y1="128" y2="1136" x1="304" />
            <wire x2="336" y1="1136" y2="1136" x1="304" />
            <wire x2="304" y1="1136" y2="1200" x1="304" />
            <wire x2="336" y1="1200" y2="1200" x1="304" />
            <wire x2="1184" y1="128" y2="128" x1="304" />
            <wire x2="1904" y1="128" y2="128" x1="1184" />
            <wire x2="1936" y1="128" y2="128" x1="1904" />
            <wire x2="1904" y1="128" y2="672" x1="1904" />
            <wire x2="1936" y1="672" y2="672" x1="1904" />
            <wire x2="1184" y1="128" y2="608" x1="1184" />
            <wire x2="1216" y1="608" y2="608" x1="1184" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="1840" y1="608" y2="608" x1="1712" />
            <wire x2="1840" y1="608" y2="736" x1="1840" />
            <wire x2="1936" y1="736" y2="736" x1="1840" />
        </branch>
        <instance x="1936" y="1024" name="XLXI_6" orien="R0">
        </instance>
        <branch name="VGA_VS">
            <wire x2="2352" y1="384" y2="384" x1="2320" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2352" y1="320" y2="320" x1="2320" />
        </branch>
        <branch name="VGA_B">
            <wire x2="2352" y1="256" y2="256" x1="2320" />
        </branch>
        <branch name="VGA_G">
            <wire x2="2352" y1="192" y2="192" x1="2320" />
        </branch>
        <branch name="VGA_R">
            <wire x2="2352" y1="128" y2="128" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="2352" y="128" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="2352" y="192" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="2352" y="256" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2352" y="320" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2352" y="384" name="VGA_VS" orien="R0" />
        <branch name="XLXN_23(8:0)">
            <wire x2="1872" y1="448" y2="992" x1="1872" />
            <wire x2="1936" y1="992" y2="992" x1="1872" />
            <wire x2="1936" y1="448" y2="448" x1="1872" />
        </branch>
        <branch name="XLXN_24(9:0)">
            <wire x2="1904" y1="928" y2="1072" x1="1904" />
            <wire x2="2352" y1="1072" y2="1072" x1="1904" />
            <wire x2="1936" y1="928" y2="928" x1="1904" />
            <wire x2="2352" y1="448" y2="448" x1="2320" />
            <wire x2="2352" y1="448" y2="1072" x1="2352" />
        </branch>
        <instance x="1936" y="416" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_51">
            <wire x2="240" y1="432" y2="1312" x1="240" />
            <wire x2="1776" y1="1312" y2="1312" x1="240" />
            <wire x2="336" y1="432" y2="432" x1="240" />
            <wire x2="1776" y1="736" y2="736" x1="1712" />
            <wire x2="1776" y1="736" y2="1312" x1="1776" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="208" y1="272" y2="1344" x1="208" />
            <wire x2="1808" y1="1344" y2="1344" x1="208" />
            <wire x2="336" y1="272" y2="272" x1="208" />
            <wire x2="1808" y1="672" y2="672" x1="1712" />
            <wire x2="1808" y1="672" y2="1344" x1="1808" />
        </branch>
        <branch name="XLXN_55(7:0)">
            <wire x2="272" y1="336" y2="1280" x1="272" />
            <wire x2="1744" y1="1280" y2="1280" x1="272" />
            <wire x2="336" y1="336" y2="336" x1="272" />
            <wire x2="1744" y1="928" y2="928" x1="1712" />
            <wire x2="1744" y1="928" y2="1280" x1="1744" />
        </branch>
        <branch name="XLXN_58(13:0)">
            <wire x2="1152" y1="1072" y2="1072" x1="816" />
            <wire x2="1216" y1="896" y2="896" x1="1152" />
            <wire x2="1152" y1="896" y2="1072" x1="1152" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="1184" y1="1200" y2="1200" x1="816" />
            <wire x2="1216" y1="704" y2="704" x1="1184" />
            <wire x2="1184" y1="704" y2="1200" x1="1184" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="848" y1="336" y2="336" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="336" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="848" y1="272" y2="272" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="272" name="SPI_MISO" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="848" y1="400" y2="400" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="400" name="SPI_SCK" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="848" y1="464" y2="464" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="464" name="AD_CONV" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="848" y1="528" y2="528" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="528" name="AMP_CS" orien="R0" />
        <branch name="AMP_DOUT">
            <wire x2="848" y1="592" y2="592" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="592" name="AMP_DOUT" orien="R0" />
        <branch name="AMP_SHDN">
            <wire x2="848" y1="656" y2="656" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="656" name="AMP_SHDN" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="848" y1="720" y2="720" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="720" name="DAC_CLR" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="848" y1="784" y2="784" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="784" name="DAC_CS" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="848" y1="848" y2="848" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="848" name="SPI_SS_B" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="848" y1="976" y2="976" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="976" name="FPGA_INIT_B" orien="R0" />
        <branch name="HOLD">
            <wire x2="1152" y1="176" y2="176" x1="960" />
            <wire x2="1152" y1="176" y2="800" x1="1152" />
            <wire x2="1216" y1="800" y2="800" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="960" y="176" name="HOLD" orien="R180" />
        <branch name="SF_CE0">
            <wire x2="848" y1="912" y2="912" x1="816" />
        </branch>
        <iomarker fontsize="28" x="848" y="912" name="SF_CE0" orien="R0" />
    </sheet>
</drawing>