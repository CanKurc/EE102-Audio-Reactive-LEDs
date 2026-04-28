library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- ============================================================================
-- Moving Average Filter (N=4)
--
-- Smooths the raw 12-bit audio signal from the XADC by averaging the last
-- 4 samples. Implemented as a shift register with a summing adder tree.
--
-- Division by 4 is performed via right-shift by 2 (zero hardware cost).
-- ============================================================================

entity moving_average is
    Port (
        clk            : in  STD_LOGIC;
        reset          : in  STD_LOGIC;
        sample_valid   : in  STD_LOGIC;                       -- pulse when new sample ready
        audio_in       : in  STD_LOGIC_VECTOR(11 downto 0);   -- raw XADC audio
        audio_filtered : out STD_LOGIC_VECTOR(11 downto 0)    -- smoothed audio
    );
end moving_average;

architecture Behavioral of moving_average is

    -- Number of samples to average. N=4 lets us divide via right-shift by 2.
    constant N : integer := 4;

    -- Shift register: an array of 4 samples, each 12 bits wide.
    -- Index 0 holds the newest sample, index 3 holds the oldest.
    type sample_array is array (0 to N-1) of unsigned(11 downto 0);
    signal samples : sample_array := (others => (others => '0'));

    -- Sum of 4 samples. Max value = 4 * 4095 = 16380, fits in 14 bits.
    signal sum : unsigned(13 downto 0);

begin

    ---------------------------------------------------------------------------
    -- Shift register process
    -- On each new sample (when sample_valid pulses), shift the register:
    --   oldest sample (index 3) is discarded
    --   all other samples move up by one position
    --   new sample enters at index 0
    ---------------------------------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                -- Clear all stored samples
                samples <= (others => (others => '0'));

            elsif sample_valid = '1' then
                -- Shift: samples(0) is newest, samples(3) is oldest
                samples(3) <= samples(2);
                samples(2) <= samples(1);
                samples(1) <= samples(0);
                samples(0) <= unsigned(audio_in);
            end if;
            -- If sample_valid is '0', samples hold their previous values
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- Combinational sum (adder tree)
    -- Each sample is resized to 14 bits before adding to prevent overflow.
    -- 12-bit + 12-bit = 13-bit, adding 4 of them safely fits in 14 bits.
    ---------------------------------------------------------------------------
    sum <= resize(samples(0), 14) +
           resize(samples(1), 14) +
           resize(samples(2), 14) +
           resize(samples(3), 14);

    ---------------------------------------------------------------------------
    -- Output: divide sum by 4 via right-shift by 2, take lower 12 bits.
    -- Taking bits (13 downto 2) is equivalent to shift_right(sum, 2) and
    -- then truncating to 12 bits.
    ---------------------------------------------------------------------------
    audio_filtered <= std_logic_vector(sum(13 downto 2));

end Behavioral;