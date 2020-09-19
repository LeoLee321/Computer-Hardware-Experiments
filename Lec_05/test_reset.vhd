--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:23:27 03/05/2018
-- Design Name:   
-- Module Name:   C:/Users/vmadmin/Desktop/accumulator/accumulator/test.vhd
-- Project Name:  accumulator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: acc
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT acc
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         clk,reset : IN  std_logic;
         S : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';
	signal reset : std_logic;
	
 	--Outputs
   signal S : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ms;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: acc PORT MAP (
          A => A,
          clk => clk,
			 reset => reset,
          S => S
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
      -- hold reset state for 100 ns.
		reset <= '1';
		A <= "00000000000000000000000000000010";
		wait for clk_period/2;	
		reset <= '0';
		
      wait for clk_period*20;	
		
		reset <= '1';
		A <= "00000000000000000000000000000101";
		wait for clk_period/2;	
		reset <= '0';

      wait for clk_period*20;

      -- insert stimulus here 

      --wait;
   end process;

END;
