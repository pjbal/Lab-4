----------------------------------------------------------------------------------
-- Company: QMUL DSD Group 2
-- Engineer: Patrick Balcombe
-- 
-- Create Date:    18:58:16 11/10/2016 
-- Design Name: 	n-bit NOR
-- Module Name:    nbit_NOR - Behavioral 
-- Project Name: 	LAB 4
-- Target Devices: 
-- Tool versions: 
-- Description: n-bit input NOR
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

entity nbit_NOR is
	generic (n: positive := 8);
	port (input : in std_logic_vector (n-1 downto 0);
			output : out std_logic);
end nbit_NOR;



architecture Behavioral of nbit_NOR is

component TwoInputOR_VHDL is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

--signal sig_prev : std_logic := '1';



begin
	process (input)
	
	begin

		--loopOr: for i in n-1 downto 0 loop--loop through the whole of the vector input
			--sig_prev<=  input(i) or  sig_prev; --check if bit is posative
			
		--end loop;--end of loop
		
		--output <= not sig_prev;--assign output, if signal is zero all inputs are zero
		
		output <= not( input(7) or  input(6) or  input(5) or  input(4) or  input(3) or input(2) or  input(1) or  input(0)); 
	
	end process;


end Behavioral;

