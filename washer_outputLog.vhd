----------------------------------------------------------------------------------
-- Company: QMUL DSD Group 2
-- Engineer: Patrick Balcombe
-- 
-- Create Date:    12:24:31 11/10/2016 
-- Design Name: 	Washer next state logic
-- Module Name:    washer_outputLog - Behavioral 
-- Project Name: 	lab 4
-- Target Devices: 
-- Tool versions: 
-- Description: logic structure to find the next logic function
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

entity washer_outputLog is
	Port (state : in std_logic_vector (2 downto 0);
			  door_lock : out std_logic;
           water_pump : out std_logic;
           soap : out std_logic;
           rotate_drum : out std_logic;
           drain : out std_logic);
end washer_outputLog;

architecture Behavioral of washer_outputLog is
begin
	process ( state)
		begin
			door_lock <= state(0) or state(1) or state(2);
			water_pump <= ((state(0)) and (not state(1)) and (not state(2))) or ((not state(0)) and (not state(1)) and (state(2)));
			soap <= ((state(0)) and (not state(1)) and (not state(2)));
			rotate_drum <= ((state(0)) and (state(2))) or ((not state(0)) and (state(1)) and (not state(2)));
			drain <= ((state(0)) and (state(1))) or ((state(1)) and (state(2)));
	
	end process;



end Behavioral;

