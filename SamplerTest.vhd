LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;

ENTITY SamplerTest IS
END SamplerTest;

ARCHITECTURE behavior OF SamplerTest IS
	
	-- Component Declaration for the Unit Under Test (UUT)
	
	COMPONENT Sampler
	PORT(
		Clk_50MHz : IN  std_logic;
		ADC_Busy : IN  std_logic;
		ADC_Data : IN  std_logic_vector(13 downto 0);
		Hold : IN  std_logic;
		Sample_WE : OUT  std_logic;
		Sample_Addr : OUT  std_logic_vector(9 downto 0);
		Sample_Data : OUT  std_logic_vector(8 downto 0);
		AMP_WE : OUT  std_logic;
		AMP_Data : OUT  std_logic_vector(7 downto 0);
		ADC_Start : OUT  std_logic;
		Debug : OUT  std_logic
		);
	END COMPONENT;
	
	
	--Inputs
	signal Clk_50MHz : std_logic := '0';
	signal ADC_Busy : std_logic := '0';
	signal ADC_Data : std_logic_vector(13 downto 0) := (others => '0');
	signal Hold : std_logic := '0';
	
	--Outputs
	signal Sample_WE : std_logic;
	signal Sample_Addr : std_logic_vector(9 downto 0);
	signal Sample_Data : std_logic_vector(8 downto 0);
	signal AMP_WE : std_logic;
	signal AMP_Data : std_logic_vector(7 downto 0);
	signal ADC_Start : std_logic;
	signal Debug : std_logic;
	
	-- Clock period definitions
	constant Clk_period : time := 20 ns;
	
	-- Test signals
	type ADCState is (Ready, GatheringSample);
	signal adc_state : ADCState := Ready;
	signal sample_delay_ct : INTEGER := 0;
	
BEGIN
	
	-- Instantiate the Unit Under Test (UUT)
	uut: Sampler PORT MAP (
		Clk_50MHz => Clk_50MHz,
		ADC_Busy => ADC_Busy,
		ADC_Data => ADC_Data,
		Hold => Hold,
		Sample_WE => Sample_WE,
		Sample_Addr => Sample_Addr,
		Sample_Data => Sample_Data,
		AMP_WE => AMP_WE,
		AMP_Data => AMP_Data,
		ADC_Start => ADC_Start,
		Debug => Debug
		);
		
	-- Clock process definitions
	Clk_process :process
	begin
		Clk_50MHz <= '0';
		wait for Clk_period/2;
		Clk_50MHz <= '1';
		wait for Clk_period/2;
	end process;
	
	
	-- Stimulus process
	stim_ADC : process
		
		variable seed1 : INTEGER := 844396720;  -- uniform procedure seed1
		variable seed2 : INTEGER := 821616997;  -- uniform procedure seed2
		variable rng_output : REAL;
		
	begin
		
		wait for 100 ns;
		
		while true loop
			if (adc_state = Ready) then
				if (ADC_Start = '1') then
					ADC_Busy <= '1';
					adc_state <= GatheringSample;
				end if;
			elsif (adc_state = GatheringSample) then
				if (sample_delay_ct < 36) then
					sample_delay_ct <= sample_delay_ct + 1;
				else
					uniform(seed1, seed2, rng_output);
					ADC_Data <= std_logic_vector(to_unsigned(integer(trunc(rng_output * real(16383 - 0))), 14));
					ADC_Busy <= '0';
					sample_delay_ct <= 0;
					adc_state <= Ready;
				end if;
			end if;
			
			wait for Clk_period;
		end loop;
		
		wait;
		
	end process;
	
	
	-- Stimulus process
	stim_Hold : process
	begin
		
		wait for 600 ms;
		Hold <= '1';
		wait for 80 ms;
		Hold <= '0';
		wait;
		
	end process;
	
END;
