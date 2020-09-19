library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity scpu_tb is
end scpu_tb;

architecture scpu_tb_arch of scpu_tb is
  
COMPONENT scpu_top PORT (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
		  regview_t1 : out STD_LOGIC_VECTOR (31 downto 0));
end COMPONENT;


signal clk : STD_LOGIC;
signal reset : STD_LOGIC;
signal regview_t1 : STD_LOGIC_VECTOR (31 downto 0);

begin
   
   process
      begin
         loop
           clk <= '1';
           wait for 100 ns;
           clk <= '0';
           wait for 100 ns;
         end loop;
   end process;
    
   process
      begin
           reset <= '1';
           wait for 50 ns;
           reset <= '0';
			  wait;
   end process;

   scpu0: scpu_top port map (
       clk   => clk,
       reset => reset,
		 regview_t1 => regview_t1);


end scpu_tb_arch;