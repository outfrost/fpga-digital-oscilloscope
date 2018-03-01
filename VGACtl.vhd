library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VGACtl is
	Port ( PixelClk_25MHz : in  STD_LOGIC;
		   VGA_R : out  STD_LOGIC;
		   VGA_G : out  STD_LOGIC;
		   VGA_B : out  STD_LOGIC;
		   VGA_HS : out  STD_LOGIC;
		   VGA_VS : out  STD_LOGIC);
end VGACtl;

architecture Behavioral of VGACtl is
	Signal vs_counter : SIGNED;
	Signal hs_counter : SIGNED;
	Signal row_enable : STD_LOGIC;
begin
	
	Horizontal_sync : process ( PixelClk_25MHz, hs_counter ) is
	begin
		if (rising_edge(PixelClk_25MHz)) then
			if (vs_counter = 
		end if;
	end process;
	
	Row_search : process ( vs_counter ) is
	begin
		if (vs_counter = 239) then
			row_enable <= '1';
		else
			row_enable <= '0';
		end if;
	end process;
	
end Behavioral;

