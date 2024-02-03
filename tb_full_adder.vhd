-------------------------------------------------------------------------------
--
-- Title       : tb_full_adder
-- Design      : lab_sessions_lab1and2
-- Author      : bhaggya
-- Company     : BUS
--
-------------------------------------------------------------------------------
--
-- File        : D:\bhaggya\pdf s\Lvl5\digital electoric system\lab\LAB_session\lab_sessions_lab1and2\src\tb_full_adder.vhd
-- Generated   : Wed Nov  3 17:55:37 2021
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
--{entity {tb_full_adder} architecture {tb_FA_structure}}
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;


entity tb_full_adder is
end tb_full_adder;

--}} End of automatically maintained section

architecture tb_FA_structure of tb_full_adder is
component cust_model_full_adder  
	port(
       A : in STD_LOGIC;
       B : in STD_LOGIC;
       Cin : in STD_LOGIC;
	   clk: in std_logic;
       Sum : out STD_LOGIC;
       Cout : out STD_LOGIC
  );
end component;	   

 signal a,b,CIN,S,COUT: std_logic:='0';
 signal clkin: std_logic;

constant clk_period: time:=100 ns;
begin
clk_pro:process

begin  
	clkin<='0';
	wait for clk_period/2;
	clkin<='1';
	wait for clk_period/2;
end process ;

UUT:cust_model_full_adder
port map(A=>a,
		B=>b,
		Cin=>CIN,
		sum=>S,
		clk=>clkin,
		Cout=>COUT);
		
stimulus_process:process
 begin
	 wait for 100ns;
	wait for clk_period;
	 a<='0';
	 b<='0';
	 CIN<='0';
	 
	 
	
	 wait for clk_period;
	 a<='0';
	 b<='0';
	 CIN<='1';
	 
	 

	 wait for clk_period;
	 a<='0';
	 b<='1';
	 CIN<='0';
	 
	 wait for clk_period;
	 a<='0';
	 b<='1';
	 CIN<='1';
	 
	
	 wait for clk_period;
	 a<='1';
	 b<='0';
	 CIN<='0';
	 
	 
	 wait for clk_period;
	 a<='1';
	 b<='0';
	 CIN<='1';
	 
	 	
	 wait for clk_period;
	 a<='1';
	 b<='1';
	 CIN<='0';
	 
	
	 wait for clk_period;
	 a<='1';
	 b<='1';
	 CIN<='1'; 	
	 
 end process;

end tb_FA_structure;
