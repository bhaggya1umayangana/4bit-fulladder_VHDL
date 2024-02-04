-------------------------------------------------------------------------------
--
-- Title       : two_to_one_mux_my
-- Design      : lab_sessions_lab1and2
-- Author      : bhaggya
-- Company     : BUS
--
-------------------------------------------------------------------------------
--
-- File        : D:\bhaggya\pdf s\Lvl5\digital electoric system\lab\LAB_session\lab_sessions_lab1and2\src\two_to_one_mux_my.vhd
-- Generated   : Sun Oct 31 12:17:19 2021
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
--{entity {two_to_one_mux_my} architecture {my_mux_2_to_1}}

library ieee;
use ieee.std_logic_1164.all;

entity two_to_one_mux_my is	  
	
	port(A: in std_logic;
	B: in std_logic;
	S: in std_logic;
	O:out std_logic);
	
end two_to_one_mux_my;

--}} End of automatically maintained section

architecture my_mux_2_to_1 of two_to_one_mux_my is
begin
	process(A,B,S)
	begin
	if(S='0')
		then O<=A;
	elsif (s='1')
		then O<=B;
	end if;
	
	end process;
end my_mux_2_to_1;
