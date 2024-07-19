----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:01 11/02/2022 
-- Design Name: 
-- Module Name:    mul4to1 - Behavioral 
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

entity mul4to1 is
    Port ( s1 : in  STD_LOGIC;
           s0 : in  STD_LOGIC;
           w0 : in  STD_LOGIC;
           w1 : in  STD_LOGIC;
           w2 : in  STD_LOGIC;
           w3 : in  STD_LOGIC;
           f : out  STD_LOGIC);
end mul4to1;

architecture Behavioral of mul4to1 is
signal out1,out2 : STD_LOGIC;

component mul2to1
port (
in0,in1,sel :in STD_LOGIC;
outp : out STD_LOGIC);
end component;
begin

tmp1 : mul2to1 port map( in0 => w0 , in1 => w1 , sel =>s0 , outp=> out1);
tmp2 : mul2to1 port map( in0 => w2 , in1 => w3 , sel =>s0 , outp=> out2);
tmp3 : mul2to1 port map( in0 => out1 ,in1 => out2 , sel =>s1 , outp=> f);

end Behavioral;

