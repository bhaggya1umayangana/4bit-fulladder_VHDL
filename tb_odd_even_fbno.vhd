-------------------------------------------------------------------------------
--
-- Title       : tb_odd_even_fbno
-- Design      : lab_sessions_lab1and2
-- Author      : bhaggya
-- Company     : BUS
--
-------------------------------------------------------------------------------
--
-- File        : D:\bhaggya\pdf s\Lvl5\digital electoric system\lab\LAB_session\lab_sessions_lab1and2\src\tb_odd_even_fbno.vhd
-- Generated   : Tue Nov  2 22:57:01 2021
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
--{entity {tb_odd_even_fbno} architecture {tb_of_structure}}
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;


entity tb_odd_even_fbno is
end tb_odd_even_fbno;

--}} End of automatically maintained section

architecture tb_of_structure of tb_odd_even_fbno is
	component cust_model_odd_even
		port( A : in STD_LOGIC;
     		  B : in STD_LOGIC;
       		  C : in STD_LOGIC;
      		  D : in STD_LOGIC;	 
			clk:  in STD_LOGIC;
      		  odd : out STD_LOGIC;
       		 Even : out STD_LOGIC;
       		Fb_no : out STD_LOGIC);	 
			   
	end component;
	
signal a,b,c,d,ODD,EVEN,FB: std_logic:='0';
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

UUT: cust_model_odd_even
port map( A=>a,
		  B=>b,
		  C=>c,
		  D=>d,
		  odd=>ODD,
		  Even=>EVEN,
		  Fb_no=>FB,
		  clk=>clkin);
		  
		  
 stimulus_process:process
 begin
	 wait for 100ns;
	wait for clk_period;
	 a<='0';
	 b<='0';
	 c<='0';
	 d<='0';
	 
	
	 wait for clk_period;
	 a<='0';
	 b<='0';
	 c<='0';
	 d<='1'; 
	 

	 wait for clk_period;
	 a<='0';
	 b<='0';
	 c<='1';
	 d<='0';
	 
	 
	 wait for clk_period;
	 a<='0';
	 b<='0';
	 c<='1';
	 d<='1';
	 
	
	 wait for clk_period;
	 a<='0';
	 b<='1';
	 c<='0';
	 d<='0';
	 
	 
	 wait for clk_period;
	 a<='0';
	 b<='1';
	 c<='0';
	 d<='1';
	 
	 	
	 wait for clk_period;
	 a<='0';
	 b<='1';
	 c<='1';
	 d<='0';
	 
	
	 wait for clk_period;
	 a<='0';
	 b<='1';
	 c<='1';
	 d<='1';  
	
	 wait for clk_period;
	 a<='1';
	 b<='0';
	 c<='0';
	 d<='0';  
	 
	 wait for clk_period;
	 a<='1';
	 b<='0';
	 c<='0';
	 d<='1';  	 
	 
	 
	 wait for clk_period;
	 a<='1';
	 b<='0';
	 c<='1';
	 d<='0';  
	 
	 
	 wait for clk_period;
	 a<='1';
	 b<='0';
	 c<='1';
	 d<='1';  
	 
	 
	 wait for clk_period;
	 a<='1';
	 b<='1';
	 c<='0';
	 d<='0';  
	 
	 
	 wait for clk_period;
	 a<='1';
	 b<='1';
	 c<='0';
	 d<='1';  
	 
	 wait for clk_period;
	 a<='1';
	 b<='1';
	 c<='1';
	 d<='0';  
	 
	 wait for clk_period;
	 a<='1';
	 b<='1';
	 c<='1';
	 d<='1';  
	 wait;
	 end process;
end tb_of_structure;
