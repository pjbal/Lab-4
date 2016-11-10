--------------------------------------------------------------------------------
-- Company: QMUL DSD Group 2
-- Engineer: Patrick Balcombe
--
-- Create Date:   19:47:01 11/10/2016
-- Design Name:   test bench NOR
-- Module Name:   H:/Documents/DSD/LAB4/nbit_NOR/nbit_NOR_tb.vhd
-- Project Name:  LAB4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nbit_NOR
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
 
ENTITY nbit_NOR_tb IS
END nbit_NOR_tb;
 
ARCHITECTURE behavior OF nbit_NOR_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nbit_NOR
    PORT(
         input : IN  std_logic_vector(7 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nbit_NOR PORT MAP (
          input => input,
          output => output
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		
		--test input 1
		input <= "11111111";
		wait for 100ns;
		
		--test input 2
		input <= "00000000";
		wait for 100ns;
		
		--test input 3
		input<= "10111111";
		wait for 100ns;
		
		--test input 4
		input<= "10101010";
		wait for 100ns;
		

      wait;
   end process;

END;
