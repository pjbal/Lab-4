--------------------------------------------------------------------------------
-- Company: QMUL DSD Group 2
-- Engineer: Patrick Balcombe
--
-- Create Date:   11:52:23 11/10/2016
-- Design Name:   test bench n-bit incrementor
-- Module Name:   H:/Documents/DSD/LAB4/eightbit_comparator/eightbit_comparator_tb.vhd
-- Project Name:  eightbit_comparator
-- Target Device:  
-- Tool versions:  
-- Description:   n-bit incrementor
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
 
ENTITY nbit_incrementor_tb IS
END nbit_incrementor_tb;
 
ARCHITECTURE behavior OF nbit_incrementor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nbit_incrementor
    PORT(
         InA : IN  std_logic_vector(3 downto 0);
         C_in : IN  std_logic;
         Sum : OUT  std_logic_vector(3 downto 0);
         C_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal InA : std_logic_vector(3 downto 0) := (others => '0');
   signal C_in : std_logic := '0';

 	--Outputs
   signal Sum : std_logic_vector(3 downto 0);
   signal C_out : std_logic;


 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nbit_incrementor PORT MAP (
          InA => InA,
          C_in => C_in,
          Sum => Sum,
          C_out => C_out
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		--1st input, check incrementing from 0, correct ouput sum=0001, C_out=0
		InA <= "0000";
		C_in <= '1';		
		wait for 100 ns; 
		
		--2nd input, check carry when 0--correct ouput sum=0000, C_out=0
		InA <= "0000";
		C_in <= '0';
		wait for 100 ns; 
		
		--3rd input, check carry --correct ouput sum=1100, C_out=0
		InA <= "1011";
		C_in <= '1';
		wait for 100 ns; 
		
		--4th input, check carry--correct ouput sum=1000, C_out=0
		InA <= "1000";
		C_in <= '0';
		wait for 100 ns; 
		
		--5th input, check carry--correct ouput sum=1001, C_out=0
		InA <= "1000";
		C_in <= '1';
		wait for 100 ns; 
		
		--6th input, check when input all ones--correct ouput sum=1111, C_out=0
		InA <= "1111";
		C_in <= '0';
		wait for 100 ns; 
		
		--7th input, check when input all ones--correct ouput sum=0000, C_out=1
		InA <= "1111";
		C_in <= '1';

      wait;
   end process;

END;
