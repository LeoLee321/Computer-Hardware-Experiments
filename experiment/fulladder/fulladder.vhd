----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:05:21 09/22/2020 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fulladder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end fulladder;

--architecture Behavioral of fulladder is
architecture structure_view of fulladder is

	component halfadder
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
	end component;

	component myxor
	 Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC);
	end component;
	
	signal Y0,Z0,Z1 : STD_LOGIC;

begin

	--S <= A xor B xor Cin;
	--Cout <= (A and B) or (B and Cin) or (A and Cin); 
	HA0: halfadder port map(A,B,Y0,Z0);
	HA1: halfadder port map(Cin,Y0,S,Z1);
	OG: myxor port map(Z0,Z1,Cout);
	
--end Behavioral;
end structure_view;
