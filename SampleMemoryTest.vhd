LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY SampleMemoryTest IS
END SampleMemoryTest;

ARCHITECTURE behavior OF SampleMemoryTest IS
	
	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT SampleMemory
	PORT(
		Clk : IN  std_logic;
		Write_Enable : IN  std_logic;
		Write_Addr : IN  std_logic_vector(9 downto 0);
		Write_Data : IN  std_logic_vector(8 downto 0);
		Read_Addr : IN  std_logic_vector(9 downto 0);
		Read_Data : OUT  std_logic_vector(8 downto 0)
	);
	END COMPONENT;
	
	--Inputs
	signal Clk : std_logic := '0';
	signal Write_Enable : std_logic := '0';
	signal Write_Addr : std_logic_vector(9 downto 0) := (others => '0');
	signal Write_Data : std_logic_vector(8 downto 0) := (others => '0');
	signal Read_Addr : std_logic_vector(9 downto 0) := (others => '0');
	
	--Outputs
	signal Read_Data : std_logic_vector(8 downto 0);
	
	-- Clock period definitions
	constant Clk_period : time := 20 ns;
	
BEGIN
	
	-- Instantiate the Unit Under Test (UUT)
	uut: SampleMemory PORT MAP (
		Clk => Clk,
		Write_Enable => Write_Enable,
		Write_Addr => Write_Addr,
		Write_Data => Write_Data,
		Read_Addr => Read_Addr,
		Read_Data => Read_Data
	);
	
	-- Clock process definitions
	Clk_process : process
	begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
	end process;
	
	-- Stimulus process
	stim_proc : process
	begin
		-- hold reset state for 100 ns.
		wait for 100 ns;
		
		Write_Addr <= "0000110010";
		Write_Data <= "001101011";
		
		wait for Clk_period;
		
		Write_Enable <= '1';
		
		wait for Clk_period;
		
		Write_Enable <= '0';
		Read_Addr <= "0001000101";
		
		wait for Clk_period*4;
		
		Write_Addr <= "0000111001";
		Write_Data <= "001100110";
		
		wait for Clk_period;
		
		Write_Enable <= '1';
		
		wait for Clk_period;
		
		Write_Enable <= '0';
		
		wait for Clk_period*4;
		
		Read_Addr <= "0000110010";
		
		wait for Clk_period*10;
		
		wait;
	end process;
	
END;
