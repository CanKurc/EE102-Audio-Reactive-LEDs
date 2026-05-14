library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity moving_average is
Port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    sample_valid : in STD_LOGIC; -- pulse when new sample ready
    audio_in : in STD_LOGIC_VECTOR (11 downto 0); -- raw XADC audio
    audio_filtered : out STD_LOGIC_VECTOR(11 downto 0) -- smoothed audio
);
end moving_average;

architecture Behavioral of moving_average is

    -- Number of samples to average.
    constant N : integer := 4;
    type sample_array is array (0 to N-1) of unsigned (11 downto 0);
    signal samples : sample_array := (others => (others => '0'));

    -- Sum of 4 samples. Max value = 4 * 4095 = 16380, fits in 14 bits.
    signal sum : unsigned (13 downto 0);

begin

    process (clk)
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

    sum <= resize(samples(0), 14) +
           resize(samples(1), 14) +
           resize(samples(2), 14) +
           resize(samples(3), 14);

    audio_filtered <= std_logic_vector(sum(13 downto 2));

end Behavioral;