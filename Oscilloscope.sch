<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <blockdef name="VGACtl">
            <timestamp>2018-3-6T14:58:57</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="VGACtl" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="PixelClk_50MHz" />
            <blockpin signalname="VGA_R" name="VGA_R" />
            <blockpin signalname="VGA_G" name="VGA_G" />
            <blockpin signalname="VGA_B" name="VGA_B" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Clk_50MHz">
            <wire x2="352" y1="128" y2="128" x1="208" />
            <wire x2="912" y1="128" y2="128" x1="352" />
        </branch>
        <iomarker fontsize="28" x="208" y="128" name="Clk_50MHz" orien="R180" />
        <instance x="912" y="416" name="XLXI_2" orien="R0">
        </instance>
        <branch name="VGA_R">
            <wire x2="1328" y1="128" y2="128" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1328" y="128" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="1328" y1="192" y2="192" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1328" y="192" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="1328" y1="256" y2="256" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1328" y="256" name="VGA_B" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="1328" y1="320" y2="320" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1328" y="320" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="1328" y1="384" y2="384" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1328" y="384" name="VGA_VS" orien="R0" />
    </sheet>
</drawing>