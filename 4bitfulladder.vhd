-------------------------------------------------------------------------------
--
-- Title       : \4bitfulladder\
-- Design      : 4bitfulladder
-- Author      : bhaggya
-- Company     : BUS
--
-------------------------------------------------------------------------------
--
-- File        : D:\bhaggya\pdf s\Lvl5\digital electoric system\active HDL\4bitadder\4_bit_adder\4bitfulladder\src\4bitfulladder.vhd
-- Generated   : Wed Mar 10 13:33:58 2021
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {\4bitfulladder\} architecture {\4bitfulladder\}}

library IEEE;
use IEEE.std_logic_1164.all;

entity \4bitfulladder\ is
	 port(
		 A : in STD_LOGIC_VECTOR (3 downto 0);	
		 B : in STD_LOGIC_VECTOR (3 downto 0);
		 Cin : in STD_LOGIC_VECTOR (3 downto 0);
		 S : out STD_LOGIC_VECTOR(3 downto 0);
		 C3 : out STD_LOGIC_VECTOR
	     );
end \4bitfulladder\;

--}} End of automatically maintained section

architecture behavioural of \4bitfulladder\ is
begin			
	component fa is 
		port(  
		  X: in STD_LOGIC;
		  Y: in STD_LOGIC;
		  Z: in STD_LOGIC;
		  S : out STD_LOGIC;
		 Co : out STD_LOGIC	  
		 );
	end component fa;
	
	 signal 
	
			
end behavioural;
