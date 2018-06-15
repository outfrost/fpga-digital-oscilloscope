LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY VGACtlTest IS
END VGACtlTest;

ARCHITECTURE behavior OF VGACtlTest IS
	
	-- Component Declaration for the Unit Under Test (UUT)
	
	COMPONENT VGACtl
	PORT(
		PixelClk_50MHz : IN  std_logic;
		Sample_Data : IN  std_logic_vector(8 downto 0);
		Sample_Addr : OUT  std_logic_vector(9 downto 0);
		VGA_R : OUT  std_logic;
		VGA_G : OUT  std_logic;
		VGA_B : OUT  std_logic;
		VGA_HS : OUT  std_logic;
		VGA_VS : OUT  std_logic
	);
	END COMPONENT;
	
	
	--Inputs
	signal PixelClk_50MHz : std_logic := '0';
	signal Sample_Data : std_logic_vector(8 downto 0) := (others => '0');

	--Outputs
	signal Sample_Addr : std_logic_vector(9 downto 0);
	signal VGA_R : std_logic;
	signal VGA_G : std_logic;
	signal VGA_B : std_logic;
	signal VGA_HS : std_logic;
	signal VGA_VS : std_logic;
	
	-- Clock period definitions
	constant Clk_period : time := 20 ns;
	
BEGIN
	
	-- Instantiate the Unit Under Test (UUT)
	uut: VGACtl PORT MAP (
		PixelClk_50MHz => PixelClk_50MHz,
		Sample_Data => Sample_Data,
		Sample_Addr => Sample_Addr,
		VGA_R => VGA_R,
		VGA_G => VGA_G,
		VGA_B => VGA_B,
		VGA_HS => VGA_HS,
		VGA_VS => VGA_VS
	);
	
	-- Clock process definitions
	Clk_process :process
	begin
		PixelClk_50MHz <= '0';
		wait for Clk_period/2;
		PixelClk_50MHz <= '1';
		wait for Clk_period/2;
	end process;
	
	
	-- Stimulus process
	stim_proc: process
	begin
		-- hold reset state for 100 ns.
		wait for 100 ns;
		
		while true loop
			if (Sample_Addr(1 downto 0) = "00") then
				Sample_Data <= "001101011";
			elsif (Sample_Addr(1 downto 0) = "01") then
				Sample_Data <= "001100110";
			elsif (Sample_Addr(1 downto 0) = "10") then
				Sample_Data <= "000101001";
			else
				Sample_Data <= "000110101";
			end if;
			
			wait for Clk_period;
		end loop;
		
		wait for Clk_period*10;
		
		wait;
	end process;
	
END;
