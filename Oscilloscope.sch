<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <port polarity="Input" name="Clk_50MHz" />
        <blockdef name="ClockDivider_25MHz">
            <timestamp>2018-3-1T12:34:15</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="ClockDivider_25MHz" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="CLKIN" />
            <blockpin name="CLKOUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Clk_50MHz">
            <wire x2="352" y1="128" y2="128" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="128" name="Clk_50MHz" orien="R180" />
        <instance x="352" y="160" name="XLXI_1" orien="R0">
        </instance>
    </sheet>
</drawing>