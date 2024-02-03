-------------------------------------------------------------------------------
--
-- Title       : mealy_machine_lab2
-- Design      : lab_sessions_lab1and2
-- Author      : bhaggya
-- Company     : BUS
--
-------------------------------------------------------------------------------
--
-- File        : D:\bhaggya\pdf s\Lvl5\digital electoric system\lab\LAB_session\lab_sessions_lab1and2\src\mealy_machine_lab2.vhd
-- Generated   : Mon Nov  8 22:52:52 2021
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
--{entity {mealy_machine_lab2} architecture {mealy_machine_lab2_struct}}
 LIBRARY ieee;
USE ieee.std_logic_1164.ALL;



entity mealy_machine_lab2 is   
	 port( x,clk,reset: in std_logic;
		y: out std_logic);
	
end mealy_machine_lab2;

--}} End of automatically maintained section

architecture mealy_machine_lab2_struct of mealy_machine_lab2 is

	 	type statetype is (s0,s1,s2,s3); --these are the state
	signal pr_state, nx_state: statetype;
	begin	
		nsl:process(pr_state, x)	
		begin
		case pr_state is
			when s0 =>
			if x = '0' then nx_state<=s1;
			else nx_state <=s0;
			end if;
		when s1 =>
			if x = '1' then nx_state<=s2;
			else nx_state <=s1;
			end if;
		when s2 =>
			if x = '1' then nx_state<=s3;
			else nx_state <=s1;
			end if;		
		when s3 =>
			if x = '0' then nx_state<=s0;
			else nx_state <=s0;
			end if;	
		when others =>
			nx_state<=s0;
		end case;
		end process nsl;	  
		
	FF:process(clk,reset)
	begin
		if(reset='1') then pr_state<=s0;
		elsif(rising_edge(clk)) then
			pr_state <=nx_state;
		end if;
	end process FF;
	
	y<='1' WHEN ((pr_state=s3) and (x='0')) else '0';


end mealy_machine_lab2_struct;
