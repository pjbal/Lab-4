--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:34:11 11/10/2016
-- Design Name:   
-- Module Name:   H:/Documents/DSD/LAB4/washer_controller/washer_outputLog_tb.vhd
-- Project Name:  washer_controller
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: washer_outputLog
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
USE ieee.numeric_std.ALL;
 
ENTITY washer_outputLog_tb IS
END washer_outputLog_tb;
 
ARCHITECTURE behavior OF washer_outputLog_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT washer_outputLog
    Port (state : in std_logic_vector (2 downto 0);
			  door_lock : out std_logic;
           water_pump : out std_logic;
           soap : out std_logic;
           rotate_drum : out std_logic;
           drain : out std_logic);
    END COMPONENT;
    

   --Inputs
   signal state : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
	signal door_lock :std_logic;
   signal water_pump : std_logic;
   signal soap : std_logic;
   signal rotate_drum :  std_logic;
   signal drain :  std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: washer_outputLog PORT MAP (
          state => state,
          door_lock => door_lock,
          water_pump => water_pump,
          soap => soap,
			 rotate_drum => rotate_drum,
			 drain => drain
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		loop0: for i in 0 to 7 loop --loop through all combinations of state
			state <= std_logic_vector(to_unsigned(i, 3)); --assign new value of state
			wait for 100 ns;--wait for responce
		end loop;
		
      wait;
   end process;

END;
