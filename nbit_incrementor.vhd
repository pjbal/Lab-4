----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:24:34 11/10/2016 
-- Design Name: 
-- Module Name:    eightbit_comparator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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

entity nbit_incrementor is
	generic (n : positive := 4);
    Port ( InA : in  STD_LOGIC_VECTOR (n-1 downto 0);
           C_in : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (n-1 downto 0);
           C_out : out  STD_LOGIC);
end nbit_incrementor;

architecture Behavioral of nbit_incrementor is

	--define I/O connetions of a full adder
	component HalfAdder_VHDL
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
	end component;
	
	--define carry signal
	signal sig_carry : STD_LOGIC_VECTOR (n-1 downto 0) := (others =>'0');

begin

	--define connections of firt half adder in series
	initFirstHalfAdd: HalfAdder_VHDL port map (InA(0), C_in, Sum(0), sig_carry(0));
	
	genHlfAdds: for i in (n-1) downto 1 generate --define connection of the main body of hald adders with genneral connections
		initStdHlfAdd: HalfAdder_VHDL port map(InA(i), sig_carry(i-1), sum(i), sig_carry(i));
	
	end generate;
	
	C_out <= sig_carry(n-1);--define output carry signal connection


end Behavioral;
