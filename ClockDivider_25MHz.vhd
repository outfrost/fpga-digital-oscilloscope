library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ClockDivider_25MHz is
	Port ( CLKIN : in  STD_LOGIC;
	       CLKOUT : out  STD_LOGIC );
end ClockDivider_25MHz;

architecture Behavioral of ClockDivider_25MHz is
	Signal CLKHOLD : STD_LOGIC;
begin
	
	Frequency_div : process ( CLKIN, CLKHOLD ) is
	begin
		if (rising_edge(CLKIN)) then
			if (CLKHOLD = '1') then
				CLKOUT <= '0';
			else
				CLKOUT <= '1';
			end if;
		end if;
		if (falling_edge(CLKIN)) then
			CLKHOLD <= not CLKHOLD;
		end if;
	end process;
	
end Behavioral;

