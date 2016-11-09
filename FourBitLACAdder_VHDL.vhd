----------------------------------------------------------------------------------
-- Company: QMUL DSD Group 2
-- Engineer: Patrick Balcombe
-- 
-- Create Date:    20:47:24 10/20/2016 
-- Design Name: 	4-bit LAC Adder
-- Module Name:    FourBitLACAdder_VHDL - Behavioral 
-- Project Name: 	LAB 2
-- Target Devices: 
-- Tool versions: 
-- Description: implementaion of single 4-bit LAC adder
--
-- Dependencies:
--						-four_bit_LAC
--						-nbit_Adder_VHDL
--							*FullAdder_VHDL
--								*HalfAdder_VHDL
--								*TwoInputOR_VHDL
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FourBitLACAdder_VHDL is
    Port ( InA : in  STD_LOGIC_VECTOR (3 downto 0);
           InB : in  STD_LOGIC_VECTOR (3 downto 0);
           C_in : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           C_out : out  STD_LOGIC);
end FourBitLACAdder_VHDL;

architecture Behavioral of FourBitLACAdder_VHDL is

	

	component nbit_Adder_VHDL is
	generic( n : positive := 4);
   Port ( InA : in  STD_LOGIC_VECTOR (n-1 downto 0);
           InB : in  STD_LOGIC_VECTOR (n-1 downto 0);
           C_terms : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Sum : out  STD_LOGIC_VECTOR (n-1 downto 0);
           C_out : out  STD_LOGIC);
   end component;
	
	component four_bit_LAC is
    Port ( InA : in std_logic_vector(3 downto 0);
           InB : in std_logic_vector(3 downto 0);
           C_In : in std_logic;
           C_terms : out std_logic_vector(3 downto 0));
	end component;
	
	signal Sig_C_Terms : std_logic_vector (3 downto 0) := (others => '0');
	
begin

	fourbitLAC: four_bit_LAC port map (InA, InB, C_in, Sig_C_Terms);
	nbitAdd: nbit_Adder_VHDL port map(InA, InB, Sig_C_Terms, Sum, C_out);


end Behavioral;

