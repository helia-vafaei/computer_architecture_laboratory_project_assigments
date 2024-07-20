----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:08:32 12/14/2022 
-- Design Name: 
-- Module Name:    SIPO - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SIPO is
	 generic(n:positive := 4);
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR(n-1 downto 0));
end SIPO;

architecture Behavioral of SIPO is
signal temp_out : STD_LOGIC_VECTOR(n-1 downto 0);
begin
process(clk)
begin
if rising_edge(clk) then
temp_out <= d & temp_out(n-1 downto 1);
end if;
end process;
output <= temp_out;

end Behavioral;

