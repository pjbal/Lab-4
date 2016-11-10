--------------------------------------------------------------------------------
-- Company: QMUL DSD Goup 2
-- Engineer: Patrick Balcombe
--
-- Create Date:   15:46:08 11/10/2016
-- Design Name:   Next state logic test bench
-- Module Name:   H:/Documents/DSD/LAB4/washer_controller/washer_nextStateLog_tb.vhd
-- Project Name:  washer_controller
-- Target Device:  
-- Tool versions:  
-- Description:   test bench to test next state logic washer device
-- 
-- VHDL Test Bench Created by ISE for module: washer_nextStateLog
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
 
ENTITY washer_nextStateLog_tb IS
END washer_nextStateLog_tb;
 
ARCHITECTURE behavior OF washer_nextStateLog_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT washer_nextStateLog
    PORT(
         state : IN  std_logic_vector(2 downto 0);
         control : IN  std_logic;
         door_open : IN  std_logic;
         next_state : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal state : std_logic_vector(2 downto 0) := (others => '0');
   signal control : std_logic := '0';
   signal door_open : std_logic := '0';

 	--Outputs
   signal next_state : std_logic_vector(2 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: washer_nextStateLog PORT MAP (
          state => state,
          control => control,
          door_open => door_open,
          next_state => next_state
        );

 
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		loop0: for i in 0 to 7 loop --loop through all combinations of state
			state <= std_logic_vector(to_unsigned(i, 3)); --assign new value of state
			loop1: for j  in std_logic range '0' to '1'  loop --loop through all combinations of control
				control <= j; --assign new value of control
				loop2: for k  in std_logic range '0' to '1'  loop --Use both posiible values of Control
									
					door_open <= k;	--assign new value of door_open

					wait for 100 ns;
				
				end loop;
			end loop; 
		end loop;
				

      wait;
   end process;

END;
