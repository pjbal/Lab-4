----------------------------------------------------------------------------------
-- Company: QMUL DSD group 2
-- Engineer: Patrick Balcombe
-- 
-- Create Date:    12:24:13 11/10/2016 
-- Design Name: 		Washer Next State Logic
-- Module Name:    washer_nextStateLog - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Next state logic function for washer
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

entity washer_nextStateLog is
	Port (state : in std_logic_vector (2 downto 0);
			control : in std_logic;
			door_open : in std_logic;
			next_state : out std_logic_vector (2 downto 0));
end washer_nextStateLog;

architecture Behavioral of washer_nextStateLog is

begin

	process (state, control, door_open)--process to find next state level
		begin
		
			--logic equation for bit 0 of next state
			next_state(0) <= ((not state(0)) and (not state(1)) and (state(2))) or ((not state(0)) and (state(2)) and control) or (control and (not state(0)) and (not state(2))and (not door_open)) or ((not state(0))  and (state(1)) and (not state(2)));
			--logic equation for bit 1 of next state
			next_state(1) <= ((state(0)) and (not state(1))) or ((not state(0)) and (state(1)) and (not state(2))) or (control and (not state(0)) and (state(1)));
			--logic equation for bit 2 of next state
			next_state(2) <= ((state(0)) and (state(1)) and (not state(2))) or ((state(0)) and (not state(1)) and (state(2))) or (control and (not state(0)) and (state(2))) or ((not state(0)) and (not state(1)) and (state(2)));
			
			
		
	end process;


end Behavioral;

