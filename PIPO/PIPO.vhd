----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:42:19 12/14/2022 
-- Design Name: 
-- Module Name:    PIPO - Behavioral 
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

entity PIPO is
Port( d: in STD_LOGIC_VECTOR(3 downto 0);
clk : in STD_LOGIC;
output : out STD_LOGIC_VECTOR(3 downto 0));
end PIPO;

architecture Behavioral of PIPO is
signal mid : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

begin
process(clk)
begin
if rising_edge(clk) then
mid <= d;
end if;
end process;
output <= mid;

end Behavioral;

