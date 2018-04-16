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
		   Sample_Data : in  STD_LOGIC_VECTOR (8 downto 0);
		   Sample_Addr : out  STD_LOGIC_VECTOR (9 downto 0);
		   VGA_R : out  STD_LOGIC;
		   VGA_G : out  STD_LOGIC;
		   VGA_B : out  STD_LOGIC;
		   VGA_HS : out  STD_LOGIC;
		   VGA_VS : out  STD_LOGIC);
end VGACtl;

architecture Behavioral of VGACtl is
	Signal vs_counter : INTEGER;
	Signal hs_counter : INTEGER;
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
			Sample_Addr <= std_logic_vector(to_unsigned(hs_counter, 10));
			if (vs_counter = to_integer(unsigned(Sample_Data))) then
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

