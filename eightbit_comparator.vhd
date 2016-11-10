----------------------------------------------------------------------------------
-- Company: QMUL DSD Group2
-- Engineer: Patrick Balcombe
-- 
-- Create Date:    19:54:10 11/10/2016 
-- Design Name: 		8-bit Comparitor
-- Module Name:    eightbit_comparator - Behavioral 
-- Project Name: 		Lab 4
-- Target Devices: 
-- Tool versions: 
-- Description: 8-bit comparitor
--
-- Dependencies: 
--						-two input XOR
--						-n-bit NOR
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

entity eightbit_comparator is
    Port ( InA : in  std_logic_vector (7 downto 0);
           InB : in  std_logic_vector (7 downto 0);
           Output : out  STD_LOGIC);
end eightbit_comparator;

architecture Behavioral of eightbit_comparator is

component TwoInputXOR_VHDL is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : out  STD_LOGIC);
end component;

component nbit_NOR is
	generic (n: positive := 8);
	port (input : in std_logic_vector (n-1 downto 0);
			output : out std_logic);
end component;

signal sig_XOR_out: std_logic_vector (7 downto 0):= (others => '0');

begin

	loopGen: for i in 7 downto 0 generate--loop through all inputs
		initXor: TwoInputXOR_VHDL port map (InA(i), InB(i), sig_XOR_out(i));	--define connections of XOR gates
	end generate;
	
	initNOR: nbit_NOR port map(sig_XOR_out, Output);--NOR the vector


end Behavioral;

