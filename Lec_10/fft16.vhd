library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.MATH_REAL.ALL;
library work;
use work.fft16_pkg.ALL;

entity fft16 is
port(  
		clk : IN std_logic;
		reset : IN std_logic;
		s : in comp_array; 	--input signals in time domain
		y : out comp_array	--output signals in frequency domain
		);
end fft16;

architecture Behavioral of fft16 is

component butterfly is 
		port(
			s1,s2 : in complex;  --inputs
			w :in complex;  -- phase factor
			g1,g2 :out complex  -- outputs
			);
end component;  

signal a,b,c : comp_array := (others => (0.0,0.0));
--phase factor, W_N = e^(-i*2*pi/N) and N=2,4,8,16 here.
--W_N^n = cos(2*pi*n/N) - i*sin(2*pi*n/N); and n has range from 0 to 1/3/7/15.
constant w2 : complex := ( (1.0,0.0) ); -- please fill the w2 here.
constant w4 : comp_arrayW4 := (  (1.0,0.0),  (0.0,-1.0) ); -- please fill the w4 here.
constant w8 : comp_arrayW8 := ( (1.0,0.0), (0.7071,-0.7071), (0.0,-1.0), (-0.7071,-0.7071) );
constant w16 : comp_arrayW16 := ( (1.0,0.0), (0.924,-0.383), (0.7071,-0.7071), (0.383,-0.924), (0.0,-1.0),  (-0.383, -0.924), (-0.7071,-0.7071),  (-0.924,-0.383)  ); -- please fill the w16 here.

begin

-- stage 0 of butterfly's.

bf01 : butterfly port map(s(0),s(8),w2,a(0),a(1));  --a(0) <= s(0) + w2*s(8); a(1) <= s(0) - w2*s(8);


-- stage 1 of butterfly's.






-- stage 2 of butterfly's.






-- stage 3 of butterfly's.





end Behavioral;