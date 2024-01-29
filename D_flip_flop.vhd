-------------------------------------------------------------------------------
--
-- Title       : D_flip_flop
-- Design      : lab_sessions_lab1and2
-- Author      : bhaggya
-- Company     : BUS
--
-------------------------------------------------------------------------------
--
-- File        : D:\bhaggya\pdf s\Lvl5\digital electoric system\lab\LAB_session\lab_sessions_lab1and2\src\D_flip_flop.vhd
-- Generated   : Wed Nov  3 20:18:56 2021
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
--{entity {D_flip_flop} architecture {structure_D_flip_flop}}

library IEEE;
use IEEE.std_logic_1164.all;

entity D_flip_flop is 
	port(D,clk:in std_logic;
	Q,Qn: out std_logic);
	
end D_flip_flop;

--}} End of automatically maintained section

architecture structure_D_flip_flop of D_flip_flop is
begin
	D_FF:process(clk,D)
	begin
		if (clk'event and clk='1') then
			Q<=D;
			Qn<= not D;
		end if;
	end process;
	

end structure_D_flip_flop;
