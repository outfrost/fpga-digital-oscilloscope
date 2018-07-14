library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.NUMERIC_STD.ALL;

entity BusInspector is
    Port ( Bus_Input : in  STD_LOGIC_VECTOR (13 downto 0);
           LED0 : out  STD_LOGIC;
           LED1 : out  STD_LOGIC;
           LED2 : out  STD_LOGIC;
           LED3 : out  STD_LOGIC;
           LED4 : out  STD_LOGIC;
           LED5 : out  STD_LOGIC;
           LED6 : out  STD_LOGIC;
           LED7 : out  STD_LOGIC);
end BusInspector;

architecture Behavioral of BusInspector is
	Signal out_vec : STD_LOGIC_VECTOR(7 downto 0);
begin
	
	process ( Bus_Input ) is
	begin
		out_vec <= Bus_Input(13 downto 6);
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
