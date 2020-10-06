----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:23:48 10/06/2020 
-- Design Name: 
-- Module Name:    GaryDecode - Behavioral 
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
Port (     BinaryNum : out  bit_vector (3 downto 0);
           GrayNum : in  bit_vector (3 downto 0));

end decoder;
			
architecture Behavioral of decoder is 
signal tmp1 : bit_vector(3 downto 0);
signal tmp2 : bit_vector(3 downto 0);
begin
	tmp1 <= (GrayNum srl 1) xor GrayNum;
	tmp2 <= tmp1 xor (GrayNum srl 2);
	BinaryNum <= tmp2 xor (GrayNum srl 3);
end Behavioral;
