--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:45:34 04/23/2018
-- Design Name:   
-- Module Name:   C:/Users/vmadmin/Desktop/fft16/fft16/testfft2d.vhd
-- Project Name:  fft16
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fft2d
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
 
ENTITY testfft2d IS
END testfft2d;
 
ARCHITECTURE behavior OF testfft2d IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fft2d
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
			s2d : in comp_array2D; 	--input signals in time domain
			y2d : out comp_array2D	--output signals in frequency domain
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal s2d : comp_array2D;

 	--Outputs
   signal y2d : comp_array2D;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fft2d PORT MAP (
          clk => clk,
          reset => reset,
          s2d => s2d,
          y2d => y2d
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

      wait for clk_period*10;

		s2d(0) <= (1.0,0.0);
		s2d(1) <= (2.0,0.0);
		s2d(2) <= (3.0,0.0);
		s2d(3) <= (4.0,0.0);
		s2d(4) <= (5.0,0.0);
		s2d(5) <= (6.0,0.0);
		s2d(6) <= (7.0,0.0);
		s2d(7) <= (8.0,0.0);
		s2d(8) <= (8.0,0.0);
		s2d(9) <= (7.0,0.0);
		s2d(10) <= (6.0,0.0);
		s2d(11) <= (5.0,0.0);
		s2d(12) <= (4.0,0.0);
		s2d(13) <= (3.0,0.0);
		s2d(14) <= (2.0,0.0);
		s2d(15) <= (1.0,0.0);;
		s2d(16) <= (8.0,0.0);
		s2d(17) <= (7.0,0.0);
		s2d(18) <= (6.0,0.0);
		s2d(19) <= (5.0,0.0);
		s2d(20) <= (4.0,0.0);
		s2d(21) <= (3.0,0.0);
		s2d(22) <= (2.0,0.0);
		s2d(23) <= (1.0,0.0);
		s2d(24) <= (1.0,0.0);
		s2d(25) <= (1.0,0.0);
		s2d(26) <= (2.0,0.0);
		s2d(27) <= (3.0,0.0);
		s2d(28) <= (4.0,0.0);
		s2d(29) <= (5.0,0.0);
		s2d(30) <= (6.0,0.0);
		s2d(31) <= (7.0,0.0);
		s2d(32) <= (8.0,0.0);
		s2d(33 to 255) <= (others => (0.0,0.0));

      wait;
   end process;

END;
