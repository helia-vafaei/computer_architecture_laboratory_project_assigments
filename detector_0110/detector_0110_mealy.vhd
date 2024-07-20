library ieee;
use ieee.std_logic_1164.all;
entity mealy_detector is
port (input, reset, clk : in std_logic; 
		output : out std_logic);
end entity mealy_detector;
architecture Behavioral of mealy_detector is
	type state is (rst, got0, got01, got011);
	signal next_state : state := rst;
begin
process (clk, reset) 	
begin
	if reset = '1' then
		next_state <= rst;
	elsif (clk = '1' and clk'event) then
		case next_state is
			when rst =>
				if input = '1' then
					next_state <= rst;
				else 
					next_state <= got0; 
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
					next_state <= rst;
				end if;
			when got011 =>
			if input = '1' then
				next_state <= rst;
			else 
				next_state <= got0;
			end if;
			when others => 
				next_state <= rst;
		end case;
	end if;
end process;

	output <= '1' when (next_state = got011 and input = '0') else '0';

end Behavioral;
