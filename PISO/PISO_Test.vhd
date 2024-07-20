--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:19:42 12/14/2022
-- Design Name:   
-- Module Name:   E:/neg/term5/az memari/hw3-2-codes/hw3/PISO_Test.vhd
-- Project Name:  hw3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PISO
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PISO_Test IS
END PISO_Test;
 
ARCHITECTURE behavior OF PISO_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PISO
    PORT(
         d : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal output : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PISO PORT MAP (
          d => d,
          clk => clk,
          output => output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   BEGIN		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		d <= "1011";
      wait for clk_period*2;
		d <= "1001";
		wait for clk_period;
      -- insert stimulus here 

      wait for clk_period*5;
   END PROCESS;

END;
