--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:17:20 03/04/2016
-- Design Name:   
-- Module Name:   C:/Documents and Settings/Student/Desktop/Examples/multiply/mult_test.vhd
-- Project Name:  multiply
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mult
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
 
ENTITY mult_test IS
END mult_test;
 
ARCHITECTURE behavior OF mult_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mult
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         P : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal P : std_logic_vector(63 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mult PORT MAP (
          A => A,
          B => B,
          clk => clk,
          P => P
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
	
		A <= "00000000000000000000000000000000";
		B <= "00000000000000000000000000000000";	
      -- hold reset state for 100ms.
      wait for 100ns;	
		A <= "00000000000000000000000000000101";
		B <= "00000000000000000000000000000110";
      wait for clk_period*10;
		A <= "01100111001100010110011100110001";
		B <= "00001010110110010000101011011001";
		wait for clk_period*10;
		A <= "00001101010110110000110101011011";
		B <= "10101110010101101010111001010110";
      -- insert stimulus here 

      wait;
   end process;

END;
