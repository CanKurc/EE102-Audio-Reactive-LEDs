library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity led_controller is
    Port ( clk          : in  STD_LOGIC;
           led_data_out : out STD_LOGIC;
           onboard_led  : out STD_LOGIC); -- NEW DIAGNOSTIC PIN
end led_controller;

architecture Behavioral of led_controller is

    constant T0H : integer := 40;  
    constant T0L : integer := 85;  
    constant T1H : integer := 80;  
    constant T1L : integer := 45;  
    constant RES : integer := 50000; 

    constant NUM_LEDS : integer := 60;
    constant TOTAL_BITS : integer := NUM_LEDS * 24;

    type state_type is (RESET_STATE, SEND_STATE);
    signal state : state_type := RESET_STATE;

    signal cycle_count : integer range 0 to 65535 := 0;
    signal bit_count   : integer range 0 to TOTAL_BITS := 0;

    signal color_data : std_logic_vector(23 downto 0) := x"FFFFFF";
    signal current_bit : std_logic;
    
    -- NEW: Internal signal to route to multiple places
    signal internal_data : std_logic := '0'; 

begin

    current_bit <= color_data(23 - (bit_count mod 24));
    
    -- Route the internal signal to BOTH the PMOD and the Onboard LED
    led_data_out <= internal_data;
    onboard_led  <= internal_data;

    process(clk)
    begin
        if rising_edge(clk) then
            case state is
                when RESET_STATE =>
                    internal_data <= '0';
                    if cycle_count < RES then
                        cycle_count <= cycle_count + 1;
                    else
                        cycle_count <= 0;
                        bit_count <= 0;
                        state <= SEND_STATE;
                    end if;

                when SEND_STATE =>
                    if current_bit = '1' then
                        if cycle_count < T1H then
                            internal_data <= '1';
                            cycle_count <= cycle_count + 1;
                        elsif cycle_count < (T1H + T1L) then
                            internal_data <= '0';
                            cycle_count <= cycle_count + 1;
                        else
                            cycle_count <= 0;
                            if bit_count = TOTAL_BITS - 1 then
                                state <= RESET_STATE;
                            else
                                bit_count <= bit_count + 1;
                            end if;
                        end if;
                    else 
                        if cycle_count < T0H then
                            internal_data <= '1';
                            cycle_count <= cycle_count + 1;
                        elsif cycle_count < (T0H + T0L) then
                            internal_data <= '0';
                            cycle_count <= cycle_count + 1;
                        else
                            cycle_count <= 0;
                            if bit_count = TOTAL_BITS - 1 then
                                state <= RESET_STATE;
                            else
                                bit_count <= bit_count + 1;
                            end if;
                        end if;
                    end if;
            end case;
        end if;
    end process;
end Behavioral;