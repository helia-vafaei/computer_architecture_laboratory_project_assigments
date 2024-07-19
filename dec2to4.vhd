----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:48:26 11/02/2022 
-- Design Name: 
-- Module Name:    dec2to4 - Behavioral 
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

entity dec2to4 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           f0 : out  STD_LOGIC;
           f1 : out  STD_LOGIC;
           f2 : out  STD_LOGIC;
           f3 : out  STD_LOGIC);
end dec2to4;

architecture Behavioral of dec2to4 is

component andgate
port (
a,b :in STD_LOGIC;
c : out STD_LOGIC);
end component;

begin

--and_ins : andgate port map ( a => ah , b => bh ,c => cout);
tmp1 :  andgate port map ( a => not a , b => not b ,c => f0);
tmp2 :  andgate port map ( a => not a , b => b ,c => f1);
tmp3 :  andgate port map ( a => not b , b => a ,c => f2);
tmp4 :  andgate port map ( a => a , b => b ,c => f3);
end Behavioral;

