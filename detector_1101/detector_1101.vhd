library ieee;
use ieee.std_logic_1164.all;

entity detector_1101 is
port(
    clk: in std_logic;
    reset: in std_logic;
    input: in std_logic;
    output: out std_logic
);
end detector_1101;

architecture moore of detector_1101 is
    constant s0: std_logic_vector(3 downto 0) := "0000";
    constant s1: std_logic_vector(3 downto 0) := "0001";
    constant s11: std_logic_vector(3 downto 0) := "0011";
    constant s110: std_logic_vector(3 downto 0) := "0110";
    constant s1101: std_logic_vector(3 downto 0) := "1101";
    signal next_state: std_logic_vector(3 downto 0) := s0; 
begin
    process(clk, reset)
    begin
        if reset = '1' then
            next_state <= s0;
        elsif rising_edge(clk) then
            case next_state is
                when s0 =>
                    if input = '1' then
                        next_state <= s1;
                    end if;
                when s1 =>
                    if input = '1' then
                        next_state <= s11;
                    else
                        next_state <= s0;
                    end if;
                when s11 =>
                    if input = '0' then
                        next_state <= s110;
                    else
                        next_state <= s11;
                    end if;
                when s110 =>
                    if input = '1' then
                        next_state <= s1101;
                    else
                        next_state <= s0;
                    end if;
                when s1101 =>
                    next_state <= s0;
                    if input = '1' then
                        next_state <= s11;
                    else
                        next_state <= s0;
                    end if;
                when others =>
                    next_state <= s0;
            end case;
        end if;
    end process;
    output <= next_state(3);
    end moore;