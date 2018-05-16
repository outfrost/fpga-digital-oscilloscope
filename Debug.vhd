library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Debug is
    Port ( ADC_Data : in  STD_LOGIC_VECTOR (13 downto 0);
		   IN0 : in  STD_LOGIC;
           LED0 : out  STD_LOGIC;
           LED1 : out  STD_LOGIC;
           LED2 : out  STD_LOGIC;
           LED3 : out  STD_LOGIC;
           LED4 : out  STD_LOGIC;
           LED5 : out  STD_LOGIC;
           LED6 : out  STD_LOGIC;
           LED7 : out  STD_LOGIC);
end Debug;

architecture Behavioral of Debug is
	Signal counter : INTEGER;
	Signal out_vec : STD_LOGIC_VECTOR(7 downto 0);
begin
	
--	process ( IN0 ) is
--	begin
--		LED0 <= IN0;
--	end process;
	
--	process ( IN0 ) is
--	begin
--		if (rising_edge(IN0)) then
--			if (counter = 255) then
--				counter <= 0;
--			else
--				counter <= counter + 1;
--			end if;
--		end if;
--	end process;
--
	process ( counter ) is
	begin
		out_vec <= ADC_Data(13 downto 6);
		LED7 <= out_vec(7);
		LED6 <= out_vec(6);
		LED5 <= out_vec(5);
		LED4 <= out_vec(4);
		LED3 <= out_vec(3);
		LED2 <= out_vec(2);
		LED1 <= out_vec(1);
		LED0 <= out_vec(0);
	end process;

end Behavioral;

