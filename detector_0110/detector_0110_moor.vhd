library ieee;
use ieee.std_logic_1164.all;
entity moore_detector is
port (input, reset, clk : in std_logic; 
		output : out std_logic);
end entity ;
architecture Behavioral of moore_detector is
	type state is (rst, got0, got01, got011, got0110);
	signal next_state : state := rst;
begin
process (clk) 
begin
	if (clk = '1' and clk'event) then
		if reset = '1' then
			next_state <= rst;
		else
			case next_state is
				when rst =>
					if input = '0' then 
						next_state <= got0;
					else 
						next_state <= rst;
					end if;
				when got0 =>
					if input = '1' then 
						next_state <= got01;
					else 
						next_state <= got0;
					end if;
				when got01 =>
					if input = '1' then 
						next_state <= got011;
					else 
						next_state <= got0; 
					end if;
				when got011 =>
					if input = '1' then 
						next_state <= rst;
					else 
						next_state <= got0110; 
					end if;
				when got0110 =>
					if input = '1' then
						next_state <= got01;
					else
						next_state <= rst;
					end if;
				when others => 
					next_state <= rst;
			end case;
		end if;
	end if;
end process;

	output <= '1' when next_state = got0110 else '0';
	
end Behavioral;
