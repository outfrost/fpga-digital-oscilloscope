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
           ADC_Start : out  STD_LOGIC;
		   Debug : out  STD_LOGIC);
end Sampler;

architecture Behavioral of Sampler is
	--Type SamplerState is (ColdStart, Ready);
	Type SamplerState is (Ready);
	--Type PreampState is (ColdStart, ControlWordSet, WriteEnableSent, AwaitingInit, Ready);
	Type ScanState is (Idle, StartSent, AwaitingSample, SampleAcquired, WriteEnableSent);

	Signal state : SamplerState;
	--Signal preamp_state : PreampState;
	Signal scan_state : ScanState;
	
	Signal clock_counter : INTEGER;
	Signal sample_counter : INTEGER;
	Signal pixel_counter : INTEGER;
begin
	
	--Root_state : process ( preamp_state ) is
	--begin
	--	if (preamp_state = Ready) then
	--		state <= Ready;
	--	else
	--		state <= ColdStart;
	--	end if;
	--end process;
	
	--Preamp_init : process ( Clk_50MHz ) is
	--begin
	--	if (rising_edge(Clk_50MHz) and state = ColdStart) then
	--		if (preamp_state = ColdStart) then
	--			AMP_Data <= "00010001";
	--			preamp_state <= ControlWordSet;
	--		elsif (preamp_state = ControlWordSet) then
	--			AMP_WE <= '1';
	--			preamp_state <= WriteEnableSent;
	--		elsif (preamp_state = WriteEnableSent) then
	--			if (ADC_Busy = '1') then
	--				AMP_WE <= '0';
	--				preamp_state <= AwaitingInit;
	--			end if;
	--		elsif (preamp_state = AwaitingInit) then
	--			if (ADC_Busy = '0') then
	--				preamp_state <= Ready;
	--			end if;
	--		end if;
	--	end if;
	--end process;
	
	Sample_scan : process ( Clk_50MHz ) is
	begin
		if (rising_edge(Clk_50MHz) and state = Ready) then
			if (scan_state = Idle and clock_counter = 0 and Hold = '0') then
				ADC_Start <= '1';
				scan_state <= StartSent;
			elsif (scan_state = StartSent) then
				if (ADC_Busy = '1') then
					ADC_Start <= '0';
					scan_state <= AwaitingSample;
				end if;
			elsif (scan_state = AwaitingSample) then
				if (ADC_Busy = '0') then
					Sample_Data <= ADC_Data(13) & (not ADC_Data(12 downto 5));
					Sample_Addr <= std_logic_vector(to_unsigned(sample_counter, 10));
					scan_state <= SampleAcquired;
				end if;
			elsif (scan_state = SampleAcquired) then
				Sample_WE <= '1';
				scan_state <= WriteEnableSent;
			elsif (scan_state = WriteEnableSent) then
				Sample_WE <= '0';
				scan_state <= Idle;
			end if;
		end if;
	end process;
	
	Sample_ct : process ( Clk_50MHz ) is
	begin
		if (rising_edge(Clk_50MHz) and state = Ready) then
			if (clock_counter = 0 and Hold = '0') then
				sample_counter <= sample_counter + 1;
				--if (sample_counter < 800) then
				--	sample_counter <= sample_counter + 1;
				--elsif (pixel_counter >= 692640) then
				--	sample_counter <= 0;
				--end if;
				if (sample_counter >= 800 and pixel_counter >= 692640) then
					sample_counter <= 0;
				end if;
			end if;
		end if;
	end process;
	
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
	
end Behavioral;

