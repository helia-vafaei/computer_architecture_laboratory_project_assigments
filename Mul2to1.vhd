----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:54:51 11/02/2022 
-- Design Name: 
-- Module Name:    Mul2to1 - Behavioral 
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

entity Mul2to1 is
    Port ( in0 : in  STD_LOGIC;
           in1 : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           outp : out  STD_LOGIC);
end Mul2to1;

architecture Behavioral of Mul2to1 is
--signal in0,in1, sel, outp: STD_LOGIC;
begin
outp <= (in0 and not sel) or (in1 and sel); 

end Behavioral;

