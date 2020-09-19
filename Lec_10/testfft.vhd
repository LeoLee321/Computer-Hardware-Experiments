--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:40:29 04/09/2018
-- Design Name:   
-- Module Name:   C:/Users/vmadmin/Desktop/fft16/fft16/testfft.vhd
-- Project Name:  fft16
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fft16
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.MATH_REAL.ALL;
library work;
use work.fft16_pkg.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testfft IS
END testfft;
 
ARCHITECTURE behavior OF testfft IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fft16
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         s : in comp_array;
         y : out comp_array
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal s : comp_array;

 	--Outputs
   signal y : comp_array;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fft16 PORT MAP (
          clk => clk,
          reset => reset,
          s => s,
          y => y
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
      wait for 100 ns;	
		
		s(0) <= (1.0,0.0);
		s(1) <= (2.0,0.0);
		s(2) <= (3.0,0.0);
		s(3) <= (4.0,0.0);
		s(4) <= (5.0,0.0);
		s(5) <= (6.0,0.0);
		s(6) <= (7.0,0.0);
		s(7) <= (8.0,0.0);
		s(8) <= (8.0,0.0);
		s(9) <= (7.0,0.0);
		s(10) <= (6.0,0.0);
		s(11) <= (5.0,0.0);
		s(12) <= (4.0,0.0);
		s(13) <= (3.0,0.0);
		s(14) <= (2.0,0.0);
		s(15) <= (1.0,0.0);

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
