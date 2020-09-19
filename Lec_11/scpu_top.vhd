----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:38:18 04/27/2015 
-- Design Name: 
-- Module Name:    scpu_top - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity scpu_top is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  regview_t1 : out std_logic_vector(31 downto 0));
end scpu_top;

architecture Behavioral of scpu_top is
component scpu
     port( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  idata : in  STD_LOGIC_VECTOR (31 downto 0);
			  ddataout : in  STD_LOGIC_VECTOR (31 downto 0);
			  iaddr : out  STD_LOGIC_VECTOR (31 downto 0);
			  ddatain : out  STD_LOGIC_VECTOR (31 downto 0);
			  daddr : out  STD_LOGIC_VECTOR (31 downto 0);
			  we : out  STD_LOGIC;
			  oe : out  STD_LOGIC;
			  regview_t1 : out STD_LOGIC_VECTOR(31 downto 0));
END COMPONENT;
component dmem
     port (
	     clk: in std_logic;
	     reset: in std_logic;
	     daddr: in std_logic_vector(31 downto 0);
	     ddatain: in std_logic_vector(31 downto 0);
	     ddataout: out std_logic_vector(31 downto 0);
	     oe: in std_logic;
	     we: in std_logic );
END COMPONENT;
component imem
generic (
	datafile: string := "test01.asc" );
port (  clk: in std_logic;
	reset: in std_logic;
	iaddr: in std_logic_vector(31 downto 0);
	idata: out std_logic_vector(31 downto 0));
END COMPONENT;

SIGNAL idata :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL ddataout :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL iaddr :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL ddatain :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL daddr :  STD_LOGIC_VECTOR (31 downto 0);
SIGNAL we :  STD_LOGIC;
SIGNAL oe :  STD_LOGIC;

begin
myscpu : scpu PORT MAP (clk, reset, idata, ddataout, iaddr, ddatain, daddr, we, oe, regview_t1);
mydmem : dmem PORT MAP (clk, reset, daddr, ddatain, ddataout, oe, we);
myimem : imem PORT MAP (clk, reset, iaddr, idata);

end Behavioral;

