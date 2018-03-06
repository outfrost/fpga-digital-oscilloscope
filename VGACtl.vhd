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
	Port ( PixelClk_50MHz : in  STD_LOGIC;
		   VGA_R : out  STD_LOGIC;
		   VGA_G : out  STD_LOGIC;
		   VGA_B : out  STD_LOGIC;
		   VGA_HS : out  STD_LOGIC;
		   VGA_VS : out  STD_LOGIC);
end VGACtl;

architecture Behavioral of VGACtl is
	Signal vs_counter : INTEGER;
	Signal hs_counter : INTEGER;
	
	Type rom_type is array (0 to 799) of std_logic_vector (8 downto 0);                 
	Signal samples : rom_type := ("001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "101111101", "101111011", "101111001", "101110110", "101110100", "101110010", "101110001", "101110000",
								  "101110000", "101110000", "101110001", "101110010", "101110010", "101110010", "101110001", "101110000",
								  "101101111", "101101110", "101101101", "101101100", "101101100", "101101011", "101101011", "101101011",
								  "101101011", "101101011", "101101110", "101110000", "101110100", "101111000", "101111010", "101111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "111111111", "111111111", "111111111", "111111111", "111111111", "111111111", "111111111", "111111111",
								  "000000000", "000000000", "000000000", "000000000", "000000000", "000000000", "000000000", "000000000",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000",
								  "001110000", "001110000", "001110001", "001110010", "001110010", "001110010", "001110001", "001110000",
								  "001101111", "001101110", "001101101", "001101100", "001101100", "001101011", "001101011", "001101011",
								  "001101011", "001101011", "001101110", "001110000", "001110100", "001111000", "001111010", "001111110",
								  "001111101", "001111011", "001111001", "001110110", "001110100", "001110010", "001110001", "001110000");
begin
	
	Horizontal_sync : process ( PixelClk_50MHz, hs_counter ) is
	begin
		if (rising_edge(PixelClk_50MHz)) then
			if (hs_counter < -64) then
            VGA_HS <= '0';
         else
            VGA_HS <= '1';
         end if;
		end if;
	end process;
   
	Vertical_sync : process ( PixelClk_50MHz, vs_counter ) is
	begin
		if (rising_edge(PixelClk_50MHz)) then
			if (vs_counter < -23) then
            VGA_VS <= '0';
         else
            VGA_VS <= '1';
         end if;
		end if;
	end process;
   
	Pixel_counters : process ( PixelClk_50MHz, hs_counter ) is
	begin
		if (falling_edge(PixelClk_50MHz)) then
			if (hs_counter = 855) then
				hs_counter <= -184;
				if (vs_counter = 636) then
					vs_counter <= -29;
				else
					vs_counter <= vs_counter + 1;
				end if;
			else
				hs_counter <= hs_counter + 1;
			end if;
		end if;
	end process;
	
	Pixel_search : process ( vs_counter, hs_counter ) is
	begin
		if (hs_counter >= 0 and hs_counter < 800) then
			if (vs_counter = to_integer(unsigned(samples(hs_counter)))) then
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			else
				VGA_R <= '0';
				VGA_G <= '0';
				VGA_B <= '0';
			end if;
		else
			VGA_R <= '0';
			VGA_G <= '0';
			VGA_B <= '0';
		end if;
	end process;
	
end Behavioral;
