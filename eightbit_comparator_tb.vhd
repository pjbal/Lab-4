--------------------------------------------------------------------------------
-- Company: QMUL DSD Group2
-- Engineer: Patrick Balcombe
--
-- Create Date:   20:02:06 11/10/2016
-- Design Name:   8-bit comparitor
-- Module Name:   H:/Documents/DSD/LAB4/eightbit_comparator/eightbit_comparator_tb.vhd
-- Project Name:  eightbit_comparator
-- Target Device:  
-- Tool versions:  
-- Description:   8 bit comparitor
-- 
-- VHDL Test Bench Created by ISE for module: eightbit_comparator
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
 
ENTITY eightbit_comparator_tb IS
END eightbit_comparator_tb;
 
ARCHITECTURE behavior OF eightbit_comparator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eightbit_comparator
    PORT(
         InA : IN  std_logic_vector (7 downto 0);
         InB : IN  std_logic_vector (7 downto 0);
         Output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector (7 downto 0):= (others => '0');
   signal InB : std_logic_vector (7 downto 0):= (others => '0');

 	--Outputs
   signal Output : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eightbit_comparator PORT MAP (
          InA => InA,
          InB => InB,
          Output => Output
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		--test stimulus 1
		InA <= "00000000";
		InB <= "00000001";
		wait for 100 ns;
		
		--test stimulus 2
		InA <= "00000000";
		InB <= "00000000";
		wait for 100 ns;
		
		--test stimulus 3
		InA <= "11111111";
		InB <= "11111111";
		wait for 100 ns;
		
		--test stimulus 4
		InA <= "11110111";
		InB <= "10111111";
		wait for 100 ns;
		
		--test stimulus 5
		InA <= "01010101";
		InB <= "10101010";
		wait for 100 ns;
		
		--test stimulus 6
		InA <= "01010101";
		InB <= "01010101";
		wait for 100 ns;

      wait;
   end process;

END;
