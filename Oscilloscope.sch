<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_82(9:0)" />
        <signal name="XLXN_103" />
        <signal name="XLXN_105" />
        <signal name="XLXN_109(13:0)" />
        <signal name="XLXN_110" />
        <signal name="XLXN_114(7:0)" />
        <signal name="XLXN_127(9:0)" />
        <signal name="XLXN_148" />
        <signal name="XLXN_150" />
        <signal name="XLXN_154(13:0)" />
        <signal name="XLXN_155" />
        <signal name="XLXN_159(7:0)" />
        <signal name="XLXN_172(9:0)" />
        <signal name="XLXN_193" />
        <signal name="XLXN_195" />
        <signal name="XLXN_199(13:0)" />
        <signal name="XLXN_200" />
        <signal name="XLXN_204(7:0)" />
        <signal name="XLXN_225(9:0)" />
        <signal name="XLXN_246" />
        <signal name="XLXN_248" />
        <signal name="XLXN_252(13:0)" />
        <signal name="XLXN_253" />
        <signal name="XLXN_257(7:0)" />
        <signal name="XLXN_210" />
        <signal name="XLXN_211" />
        <signal name="XLXN_212" />
        <signal name="XLXN_213" />
        <signal name="XLXN_267" />
        <signal name="XLXN_268" />
        <signal name="XLXN_25(8:0)" />
        <signal name="XLXN_26(9:0)" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_27" />
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="VGA_B" />
        <signal name="VGA_G" />
        <signal name="VGA_R" />
        <signal name="XLXN_23(8:0)" />
        <signal name="XLXN_24(9:0)" />
        <signal name="XLXN_280(9:0)" />
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
        <signal name="SF_CE0" />
        <signal name="LED7" />
        <signal name="LED6" />
        <signal name="LED5" />
        <signal name="LED4" />
        <signal name="LED3" />
        <signal name="LED2" />
        <signal name="LED1" />
        <signal name="LED0" />
        <signal name="XLXN_301" />
        <signal name="XLXN_60" />
        <signal name="XLXN_303" />
        <signal name="XLXN_51" />
        <signal name="XLXN_65" />
        <signal name="XLXN_67(13:0)" />
        <signal name="XLXN_307(13:0)" />
        <signal name="XLXN_308" />
        <signal name="XLXN_56" />
        <signal name="ROT_A" />
        <signal name="XLXN_55(7:0)" />
        <signal name="XLXN_312(7:0)" />
        <signal name="XLXN_69(7:0)" />
        <signal name="SW3" />
        <signal name="XLXN_69(7)" />
        <signal name="SW0" />
        <signal name="SW1" />
        <signal name="SW2" />
        <signal name="XLXN_69(6)" />
        <signal name="XLXN_69(5)" />
        <signal name="XLXN_69(4)" />
        <signal name="XLXN_69(3)" />
        <signal name="XLXN_69(2)" />
        <signal name="XLXN_69(1)" />
        <signal name="XLXN_69(0)" />
        <signal name="XLXN_343" />
        <signal name="XLXN_344" />
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
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="LED7" />
        <port polarity="Output" name="LED6" />
        <port polarity="Output" name="LED5" />
        <port polarity="Output" name="LED4" />
        <port polarity="Output" name="LED3" />
        <port polarity="Output" name="LED2" />
        <port polarity="Output" name="LED1" />
        <port polarity="Output" name="LED0" />
        <port polarity="Input" name="ROT_A" />
        <port polarity="Input" name="SW3" />
        <port polarity="Input" name="SW0" />
        <port polarity="Input" name="SW1" />
        <port polarity="Input" name="SW2" />
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
            <timestamp>2018-5-15T15:55:3</timestamp>
            <line x2="496" y1="32" y2="32" x1="432" />
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
            <rect width="368" x="64" y="-384" height="448" />
        </blockdef>
        <blockdef name="Debug">
            <timestamp>2018-4-17T15:51:42</timestamp>
            <rect width="64" x="0" y="276" height="24" />
            <line x2="0" y1="288" y2="288" x1="64" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-512" height="832" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="ADC_Ctrl" name="XLXI_7">
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="ROT_A" name="AMP_WE" />
            <blockpin signalname="XLXN_51" name="ADC_Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="AMP_DOUT" name="AMP_DOUT" />
            <blockpin signalname="XLXN_69(7:0)" name="AMP_DI(7:0)" />
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
            <blockpin signalname="XLXN_67(13:0)" name="ADC_DOA(13:0)" />
            <blockpin name="ADC_DOB(13:0)" />
            <blockpin name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
        </block>
        <block symbolname="Sampler" name="XLXI_10">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_60" name="ADC_Busy" />
            <blockpin name="Hold" />
            <blockpin signalname="XLXN_67(13:0)" name="ADC_Data(13:0)" />
            <blockpin signalname="XLXN_27" name="Sample_WE" />
            <blockpin signalname="XLXN_56" name="AMP_WE" />
            <blockpin signalname="XLXN_51" name="ADC_Start" />
            <blockpin signalname="XLXN_65" name="Debug" />
            <blockpin signalname="XLXN_26(9:0)" name="Sample_Addr(9:0)" />
            <blockpin signalname="XLXN_25(8:0)" name="Sample_Data(8:0)" />
            <blockpin signalname="XLXN_55(7:0)" name="AMP_Data(7:0)" />
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
        <block symbolname="Debug" name="XLXI_11">
            <blockpin signalname="XLXN_65" name="IN0" />
            <blockpin signalname="LED0" name="LED0" />
            <blockpin signalname="LED1" name="LED1" />
            <blockpin signalname="LED2" name="LED2" />
            <blockpin signalname="LED3" name="LED3" />
            <blockpin signalname="LED4" name="LED4" />
            <blockpin signalname="LED5" name="LED5" />
            <blockpin signalname="LED6" name="LED6" />
            <blockpin signalname="LED7" name="LED7" />
            <blockpin signalname="XLXN_67(13:0)" name="ADC_Data(13:0)" />
        </block>
        <block symbolname="buf" name="XLXI_32">
            <blockpin signalname="SW3" name="I" />
            <blockpin signalname="XLXN_69(7)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_46">
            <blockpin signalname="SW2" name="I" />
            <blockpin signalname="XLXN_69(6)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_47">
            <blockpin signalname="SW1" name="I" />
            <blockpin signalname="XLXN_69(5)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_48">
            <blockpin signalname="SW0" name="I" />
            <blockpin signalname="XLXN_69(4)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_49">
            <blockpin signalname="SW3" name="I" />
            <blockpin signalname="XLXN_69(3)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_50">
            <blockpin signalname="SW2" name="I" />
            <blockpin signalname="XLXN_69(2)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_51">
            <blockpin signalname="SW1" name="I" />
            <blockpin signalname="XLXN_69(1)" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_52">
            <blockpin signalname="SW0" name="I" />
            <blockpin signalname="XLXN_69(0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1024" y="1072" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1904" y="960" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_25(8:0)">
            <wire x2="2624" y1="864" y2="864" x1="2400" />
        </branch>
        <branch name="XLXN_26(9:0)">
            <wire x2="2624" y1="800" y2="800" x1="2400" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="992" y1="128" y2="128" x1="896" />
            <wire x2="1872" y1="128" y2="128" x1="992" />
            <wire x2="2592" y1="128" y2="128" x1="1872" />
            <wire x2="2624" y1="128" y2="128" x1="2592" />
            <wire x2="2592" y1="128" y2="672" x1="2592" />
            <wire x2="2624" y1="672" y2="672" x1="2592" />
            <wire x2="1872" y1="128" y2="608" x1="1872" />
            <wire x2="1904" y1="608" y2="608" x1="1872" />
            <wire x2="992" y1="128" y2="1136" x1="992" />
            <wire x2="1024" y1="1136" y2="1136" x1="992" />
            <wire x2="992" y1="1136" y2="1200" x1="992" />
            <wire x2="1024" y1="1200" y2="1200" x1="992" />
        </branch>
        <branch name="XLXN_27">
            <wire x2="2528" y1="608" y2="608" x1="2400" />
            <wire x2="2528" y1="608" y2="736" x1="2528" />
            <wire x2="2624" y1="736" y2="736" x1="2528" />
        </branch>
        <instance x="2624" y="1024" name="XLXI_6" orien="R0">
        </instance>
        <branch name="VGA_VS">
            <wire x2="3040" y1="384" y2="384" x1="3008" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="3040" y1="320" y2="320" x1="3008" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3040" y1="256" y2="256" x1="3008" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3040" y1="192" y2="192" x1="3008" />
        </branch>
        <branch name="VGA_R">
            <wire x2="3040" y1="128" y2="128" x1="3008" />
        </branch>
        <branch name="XLXN_23(8:0)">
            <wire x2="2560" y1="448" y2="992" x1="2560" />
            <wire x2="2624" y1="992" y2="992" x1="2560" />
            <wire x2="2624" y1="448" y2="448" x1="2560" />
        </branch>
        <branch name="XLXN_24(9:0)">
            <wire x2="2592" y1="928" y2="1072" x1="2592" />
            <wire x2="3040" y1="1072" y2="1072" x1="2592" />
            <wire x2="2624" y1="928" y2="928" x1="2592" />
            <wire x2="3040" y1="448" y2="448" x1="3008" />
            <wire x2="3040" y1="448" y2="1072" x1="3040" />
        </branch>
        <instance x="2624" y="416" name="XLXI_2" orien="R0">
        </instance>
        <branch name="SPI_MOSI">
            <wire x2="1536" y1="336" y2="336" x1="1504" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="1536" y1="272" y2="272" x1="1504" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="1536" y1="400" y2="400" x1="1504" />
        </branch>
        <branch name="AD_CONV">
            <wire x2="1536" y1="464" y2="464" x1="1504" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="1536" y1="528" y2="528" x1="1504" />
        </branch>
        <branch name="AMP_DOUT">
            <wire x2="1536" y1="592" y2="592" x1="1504" />
        </branch>
        <branch name="AMP_SHDN">
            <wire x2="1536" y1="656" y2="656" x1="1504" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="1536" y1="720" y2="720" x1="1504" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="1536" y1="784" y2="784" x1="1504" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="1536" y1="848" y2="848" x1="1504" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="1536" y1="976" y2="976" x1="1504" />
        </branch>
        <branch name="SF_CE0">
            <wire x2="1536" y1="912" y2="912" x1="1504" />
        </branch>
        <branch name="LED7">
            <wire x2="3040" y1="1664" y2="1664" x1="3008" />
        </branch>
        <branch name="LED6">
            <wire x2="3040" y1="1600" y2="1600" x1="3008" />
        </branch>
        <branch name="LED5">
            <wire x2="3040" y1="1536" y2="1536" x1="3008" />
        </branch>
        <branch name="LED4">
            <wire x2="3040" y1="1472" y2="1472" x1="3008" />
        </branch>
        <branch name="LED3">
            <wire x2="3040" y1="1408" y2="1408" x1="3008" />
        </branch>
        <branch name="LED2">
            <wire x2="3040" y1="1344" y2="1344" x1="3008" />
        </branch>
        <branch name="LED1">
            <wire x2="3040" y1="1280" y2="1280" x1="3008" />
        </branch>
        <branch name="LED0">
            <wire x2="3040" y1="1216" y2="1216" x1="3008" />
        </branch>
        <instance x="2624" y="1696" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_60">
            <wire x2="1872" y1="1200" y2="1200" x1="1504" />
            <wire x2="1904" y1="704" y2="704" x1="1872" />
            <wire x2="1872" y1="704" y2="1200" x1="1872" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="928" y1="432" y2="1312" x1="928" />
            <wire x2="2464" y1="1312" y2="1312" x1="928" />
            <wire x2="1024" y1="432" y2="432" x1="928" />
            <wire x2="2464" y1="736" y2="736" x1="2400" />
            <wire x2="2464" y1="736" y2="1312" x1="2464" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="2528" y1="992" y2="992" x1="2400" />
            <wire x2="2528" y1="992" y2="1920" x1="2528" />
            <wire x2="2624" y1="1920" y2="1920" x1="2528" />
        </branch>
        <branch name="XLXN_67(13:0)">
            <wire x2="1840" y1="1072" y2="1072" x1="1504" />
            <wire x2="1840" y1="1072" y2="1984" x1="1840" />
            <wire x2="2624" y1="1984" y2="1984" x1="1840" />
            <wire x2="1904" y1="896" y2="896" x1="1840" />
            <wire x2="1840" y1="896" y2="1072" x1="1840" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="2496" y1="1344" y2="1344" x1="896" />
            <wire x2="2496" y1="672" y2="672" x1="2400" />
            <wire x2="2496" y1="672" y2="1344" x1="2496" />
        </branch>
        <branch name="ROT_A">
            <wire x2="1008" y1="272" y2="272" x1="400" />
            <wire x2="1024" y1="272" y2="272" x1="1008" />
        </branch>
        <branch name="XLXN_55(7:0)">
            <wire x2="2432" y1="1280" y2="1280" x1="960" />
            <wire x2="2432" y1="928" y2="928" x1="2400" />
            <wire x2="2432" y1="928" y2="1280" x1="2432" />
        </branch>
        <bustap x2="800" y1="384" y2="384" x1="896" />
        <bustap x2="800" y1="448" y2="448" x1="896" />
        <bustap x2="800" y1="512" y2="512" x1="896" />
        <bustap x2="800" y1="576" y2="576" x1="896" />
        <bustap x2="800" y1="640" y2="640" x1="896" />
        <bustap x2="800" y1="704" y2="704" x1="896" />
        <bustap x2="800" y1="768" y2="768" x1="896" />
        <bustap x2="800" y1="832" y2="832" x1="896" />
        <branch name="XLXN_69(7:0)">
            <wire x2="1024" y1="336" y2="336" x1="896" />
            <wire x2="896" y1="336" y2="384" x1="896" />
            <wire x2="896" y1="384" y2="448" x1="896" />
            <wire x2="896" y1="448" y2="512" x1="896" />
            <wire x2="896" y1="512" y2="576" x1="896" />
            <wire x2="896" y1="576" y2="640" x1="896" />
            <wire x2="896" y1="640" y2="704" x1="896" />
            <wire x2="896" y1="704" y2="768" x1="896" />
            <wire x2="896" y1="768" y2="832" x1="896" />
        </branch>
        <iomarker fontsize="28" x="896" y="128" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="3040" y="128" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="3040" y="192" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3040" y="256" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="3040" y="320" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3040" y="384" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="1536" y="336" name="SPI_MOSI" orien="R0" />
        <iomarker fontsize="28" x="1536" y="272" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="1536" y="400" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="1536" y="464" name="AD_CONV" orien="R0" />
        <iomarker fontsize="28" x="1536" y="528" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="1536" y="592" name="AMP_DOUT" orien="R0" />
        <iomarker fontsize="28" x="1536" y="656" name="AMP_SHDN" orien="R0" />
        <iomarker fontsize="28" x="1536" y="720" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="1536" y="784" name="DAC_CS" orien="R0" />
        <iomarker fontsize="28" x="1536" y="848" name="SPI_SS_B" orien="R0" />
        <iomarker fontsize="28" x="1536" y="976" name="FPGA_INIT_B" orien="R0" />
        <iomarker fontsize="28" x="1536" y="912" name="SF_CE0" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1216" name="LED0" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1280" name="LED1" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1344" name="LED2" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1408" name="LED3" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1472" name="LED4" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1536" name="LED5" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1600" name="LED6" orien="R0" />
        <iomarker fontsize="28" x="3040" y="1664" name="LED7" orien="R0" />
        <iomarker fontsize="28" x="400" y="384" name="SW3" orien="R180" />
        <iomarker fontsize="28" x="400" y="448" name="SW2" orien="R180" />
        <iomarker fontsize="28" x="400" y="512" name="SW1" orien="R180" />
        <iomarker fontsize="28" x="400" y="576" name="SW0" orien="R180" />
        <instance x="544" y="416" name="XLXI_32" orien="R0" />
        <branch name="XLXN_69(7)">
            <wire x2="800" y1="384" y2="384" x1="768" />
        </branch>
        <branch name="SW2">
            <wire x2="496" y1="448" y2="448" x1="400" />
            <wire x2="544" y1="448" y2="448" x1="496" />
            <wire x2="496" y1="448" y2="704" x1="496" />
            <wire x2="544" y1="704" y2="704" x1="496" />
        </branch>
        <branch name="SW1">
            <wire x2="464" y1="512" y2="512" x1="400" />
            <wire x2="544" y1="512" y2="512" x1="464" />
            <wire x2="464" y1="512" y2="768" x1="464" />
            <wire x2="544" y1="768" y2="768" x1="464" />
        </branch>
        <branch name="SW0">
            <wire x2="432" y1="576" y2="576" x1="400" />
            <wire x2="544" y1="576" y2="576" x1="432" />
            <wire x2="432" y1="576" y2="832" x1="432" />
            <wire x2="544" y1="832" y2="832" x1="432" />
        </branch>
        <branch name="XLXN_69(6)">
            <wire x2="800" y1="448" y2="448" x1="768" />
        </branch>
        <instance x="544" y="480" name="XLXI_46" orien="R0" />
        <branch name="XLXN_69(5)">
            <wire x2="800" y1="512" y2="512" x1="768" />
        </branch>
        <instance x="544" y="544" name="XLXI_47" orien="R0" />
        <branch name="XLXN_69(4)">
            <wire x2="800" y1="576" y2="576" x1="768" />
        </branch>
        <instance x="544" y="608" name="XLXI_48" orien="R0" />
        <branch name="XLXN_69(3)">
            <wire x2="800" y1="640" y2="640" x1="768" />
        </branch>
        <instance x="544" y="672" name="XLXI_49" orien="R0" />
        <branch name="XLXN_69(2)">
            <wire x2="800" y1="704" y2="704" x1="768" />
        </branch>
        <instance x="544" y="736" name="XLXI_50" orien="R0" />
        <branch name="XLXN_69(1)">
            <wire x2="800" y1="768" y2="768" x1="768" />
        </branch>
        <instance x="544" y="800" name="XLXI_51" orien="R0" />
        <branch name="XLXN_69(0)">
            <wire x2="800" y1="832" y2="832" x1="768" />
        </branch>
        <instance x="544" y="864" name="XLXI_52" orien="R0" />
        <branch name="SW3">
            <wire x2="528" y1="384" y2="384" x1="400" />
            <wire x2="544" y1="384" y2="384" x1="528" />
            <wire x2="528" y1="384" y2="640" x1="528" />
            <wire x2="544" y1="640" y2="640" x1="528" />
        </branch>
        <iomarker fontsize="28" x="400" y="272" name="ROT_A" orien="R180" />
    </sheet>
</drawing>