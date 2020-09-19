--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:50:23 04/08/2016
-- Design Name:   
-- Module Name:   C:/Documents and Settings/Student/Desktop/Examples/myclock/clocktest.vhd
-- Project Name:  myclock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: muclock
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY clocktest IS
END clocktest;
 
ARCHITECTURE behavior OF clocktest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT myclock
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         preset : IN  std_logic;
         hin : IN  std_logic_vector(3 downto 0);
         min : IN  std_logic_vector(5 downto 0);
         sin : IN  std_logic_vector(5 downto 0);
         apin : IN  std_logic;
         hout : OUT  std_logic_vector(3 downto 0);
         mout : OUT  std_logic_vector(5 downto 0);
         sout : OUT  std_logic_vector(5 downto 0);
         apout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal preset : std_logic := '0';
   signal hin : std_logic_vector(3 downto 0) := (others => '0');
   signal min : std_logic_vector(5 downto 0) := (others => '0');
   signal sin : std_logic_vector(5 downto 0) := (others => '0');
   signal apin : std_logic := '0';

 	--Outputs
   signal hout : std_logic_vector(3 downto 0);
   signal mout : std_logic_vector(5 downto 0);
   signal sout : std_logic_vector(5 downto 0);
   signal apout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 1ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: myclock PORT MAP (
          clk => clk,
          reset => reset,
          preset => preset,
          hin => hin,
          min => min,
          sin => sin,
          apin => apin,
          hout => hout,
          mout => mout,
          sout => sout,
          apout => apout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100ms.
	  reset <= '0';
      
	  wait for 10000ns;	
			hin <= std_logic_vector(to_unsigned(5,hin'length));
			min <= std_logic_vector(to_unsigned(30,min'length));
			sin <= std_logic_vector(to_unsigned(45,sin'length));
			apin <= '1';
			preset <= '1';

      wait for clk_period;
			preset <= '0';
		
		wait for 10000ns;	
			reset <= '1';
			
		wait for clk_period;
			reset <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
