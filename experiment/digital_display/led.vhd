----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:40:55 10/06/2020 
-- Design Name: 
-- Module Name:    led - Behavioral 
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

entity led is
    Port ( B : in  STD_LOGIC_VECTOR (3 downto 0);
           L : out  STD_LOGIC_VECTOR (6 downto 0));
end led;

architecture Behavioral of led is

begin

	L <= "1011111" when (B = "0000") else		  "0000011" when (B = "0001") else		  "1110110" when (B = "0010") else		  "1110011" when (B = "0011") else	     "0101011" when (B = "0100") else		  "1111001" when (B = "0101") else		  "1111101" when (B = "0110") else		  "1000011" when (B = "0111") else	     "1111111" when (B = "1000") else		  "1111011";

end Behavioral;

