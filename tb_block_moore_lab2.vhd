-------------------------------------------------------------------------------
--
-- Title       : tb_block_moore_lab2
-- Design      : lab_sessions_lab1and2
-- Author      : bhaggya
-- Company     : BUS
--
-------------------------------------------------------------------------------
--
-- File        : D:\bhaggya\pdf s\Lvl5\digital electoric system\lab\LAB_session\lab_sessions_lab1and2\src\tb_block_moore_lab2.vhd
-- Generated   : Mon Nov  8 12:25:46 2021
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
--{entity {tb_block_moore_lab2} architecture {tb_block_moore_lab2_struc}}
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;


entity tb_block_moore_lab2 is
end tb_block_moore_lab2;

--}} End of automatically maintained section

architecture tb_block_moore_lab2_struc of tb_block_moore_lab2 is
component block_moore_lab2 
  port(
       X : in STD_LOGIC;
       Y : out STD_LOGIC
  );
end component;		 

signal x,y:std_logic;

--constant clk_period: time:=100 ns;
begin
	

UUT: block_moore_lab2  
port map( X=>x,
		Y=>y);

stimulus_process:process
 begin
	 wait for 100ns;
	--wait for clk_period;	


	x<='0';
	wait for 40ns;
	x<='0';
	wait for 40ns; 
	x<='0';
	wait for 40ns;
	x<='1';
	wait for 40ns;
	x<='1';
	wait for 40ns;
	x<='0';	 
	wait for 40ns;
 end process;		
		
		
		
end tb_block_moore_lab2_struc;
