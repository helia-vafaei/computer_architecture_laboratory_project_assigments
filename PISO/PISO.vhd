----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:10:47 12/14/2022 
-- Design Name: 
-- Module Name:    PISO - Behavioral 
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

entity PISO is
    Port ( d : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           clk : in  STD_LOGIC;
           output : out  STD_LOGIC);
end PISO;

architecture Behavioral of PISO is
SIGNAL temp_out : STD_LOGIC_VECTOR(3 DOWNTO 0);

begin
PROCESS(clk)
BEGIN
IF rising_edge(clk) then 
temp_out <= d;
END IF;
END PROCESS;
output <= temp_out(0);

end Behavioral;

