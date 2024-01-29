-------------------------------------------------------------------------------
--
-- Title       : T_FF_lab2
-- Design      : lab_sessions_lab1and2
-- Author      : bhaggya
-- Company     : BUS
--
-------------------------------------------------------------------------------
--
-- File        : D:\bhaggya\pdf s\Lvl5\digital electoric system\lab\LAB_session\lab_sessions_lab1and2\src\T_FF_lab2.vhd
-- Generated   : Sun Nov  7 00:40:40 2021
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
--{entity {T_FF_lab2} architecture {struc_T_FF_lab2}}


library IEEE;
use IEEE.std_logic_1164.all;


entity T_flip_flop is 
	port( T: in std_logic;
		Clk: in std_logic;
		clr:in std_logic;
		Q: out std_logic;
		 Q_N : out std_logic);

end T_flip_flop;

--}} End of automatically maintained section

architecture behaviour of T_flip_flop is
 signal S1: std_logic;


begin
	process (Clk,clr)
	begin 
		
		if(clr='1') then 
			S1<='0';				  --when rst=1  ->  Q=0 and Q_N = 1 (the flip-flop is reset)
		elsif(rising_edge(Clk)) then
		if (T='1') then								 --when en=1, rst=0 and clk=1 and T=1 – > Q = 1 and Q_N = 0
			S1 <= not S1;
		else 
			S1 <=S1;
		end if;
		end if;
end process;
Q <= S1;
Q_N  <=  not s1;
end behaviour;