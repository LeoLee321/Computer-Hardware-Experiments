library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.MATH_REAL.ALL;
library work;
use work.fft16_pkg.ALL;

entity fft2d is
port(  
		clk : IN std_logic;
		reset : IN std_logic;
		s2d : in comp_array2D; 	--input signals in time domain
		y2d : out comp_array2D	--output signals in frequency domain
		);
end fft2d;

architecture Behavioral of fft2d is

component fft16 is 
		port(
			clk : IN std_logic;
			reset : IN std_logic;
			s : in comp_array; 	--input signals in time domain
			y : out comp_array	--output signals in frequency domain
		);
end component;  

begin







end Behavioral;