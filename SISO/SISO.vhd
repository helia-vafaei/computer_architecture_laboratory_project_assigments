----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:04:05 12/14/2022 
-- Design Name: 
-- Module Name:    SISO - Behavioral 
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

entity SISO is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC);
end SISO;

architecture Behavioral of SISO is
signal tmep_out : STD_LOGIC_VECTOR(3 DOWNTO 0);


begin
PROCESS(clk)
BEGIN
IF RISING_EDGE(clk) THEN
tmep_out <= d & tmep_out(3 DOWNTO 1);
END IF;
END PROCESS;
output <= tmep_out(0);

end Behavioral;

