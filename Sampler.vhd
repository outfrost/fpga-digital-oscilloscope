library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sampler is
    Port ( Clk_50MHz : in  STD_LOGIC;
           ADC_Busy : in  STD_LOGIC;
           ADC_Data : in  STD_LOGIC_VECTOR (13 downto 0);
           Hold : in  STD_LOGIC;
           Sample_WE : out  STD_LOGIC;
           Sample_Addr : out  STD_LOGIC_VECTOR (9 downto 0);
           Sample_Data : out  STD_LOGIC_VECTOR (8 downto 0);
           AMP_WE : out  STD_LOGIC;
           AMP_Data : out  STD_LOGIC_VECTOR (7 downto 0);
           ADC_Start : out  STD_LOGIC);
end Sampler;

architecture Behavioral of Sampler is
	Signal clock_counter : INTEGER;
	Signal sample_counter : INTEGER;
	Signal pixel_counter : INTEGER;
	Signal await_sample : STD_LOGIC;
	Signal adc_busy_last : STD_LOGIC;
begin
	
	Sampling_rate_ct : process ( Clk_50MHz, clock_counter ) is
	begin
		if (falling_edge(Clk_50MHz)) then
			if (clock_counter < 500000) then
				clock_counter <= clock_counter + 1;
			else
				clock_counter <= 0;
			end if;
		end if;
	end process;
	
	Pixel_ct : process ( Clk_50MHz, pixel_counter ) is
	begin
		if (falling_edge(Clk_50MHz)) then
			if (pixel_counter < 692640) then
				pixel_counter <= pixel_counter + 1;
			else
				pixel_counter <= 0;
			end if;
		end if;
	end process;
	
	Sample_query : process ( Clk_50MHz, Hold, clock_counter ) is
	begin
		if (rising_edge(Clk_50MHz)) then
			if (clock_counter = 0 and Hold = '0') then
				ADC_Start <= '1';
				await_sample <= '1';
			else
				ADC_Start <= '0';
			end if;
		end if;
	end process;
	
	Sample_ct : process ( Clk_50MHz, Hold, sample_counter, pixel_counter ) is
	begin
		if (rising_edge(Clk_50MHz)) then
			if (clock_counter = 0 and Hold = '0') then
				if (sample_counter < 800) then
					sample_counter <= sample_counter + 1;
				elsif (pixel_counter >= 692640) then
					sample_counter <= 0;
				end if;
			end if;
		end if;
	end process;
	
	Sample_scan : process ( Clk_50MHz, ADC_Data, ADC_Busy, adc_busy_last, await_sample, sample_counter ) is
	begin
		if (rising_edge(Clk_50MHz)) then
			if (await_sample = '1' and adc_busy_last = '1' and ADC_Busy = '0') then
				Sample_Data <= ADC_Data(13 downto 5);
				Sample_Addr <= std_logic_vector(to_unsigned(sample_counter, 10));
				Sample_WE <= '1';
			else
				Sample_WE <= '0';
			end if;
			adc_busy_last <= ADC_Busy;
		end if;
	end process;
	
end Behavioral;

