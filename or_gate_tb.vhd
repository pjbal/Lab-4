--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:04:02 10/13/2016
-- Design Name:   
-- Module Name:   C:/Users/harry/Documents/DSD/lab1/or_gate_tb.vhd
-- Project Name:  lab1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: or_gate
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
 
ENTITY or_gate_tb IS
END or_gate_tb;
 
ARCHITECTURE behavior OF or_gate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT or_gate
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal sig_a : std_logic := '0';
   signal sig_b : std_logic := '0';

 	--Outputs
   signal sig_y : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: or_gate PORT MAP ( sig_a, sig_b, sig_y ) ;

  tb : process
		begin
			wait for 100 ns; -- wait for global reset
			sig_a <= '0'; -- check 0 nand 0 = 1
			sig_b <= '0';
			wait for 100 ns;
			sig_a <= '1'; -- check 0 nand 1 = 1
			wait for 100 ns;
			sig_a <= '0'; -- check 1 nand 0 = 1
			sig_b <= '1';
			wait for 100 ns;
			sig_a <= '1'; -- check 1 nand 1 = 0
			wait; -- end of test: wait for ever
	end process; 

END;
