LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY lab08_test IS
END lab08_test;
 
ARCHITECTURE behavior OF lab08_test IS 


    component myrandom
    port( 
        Clk : in std_logic;
        reset : in std_logic;
        din : in std_logic_vector(10 downto 1);
        dout : out std_logic_vector(10 downto 1));
    end component;
 
   --Inputs
   signal Clk: std_logic;
   signal reset : std_logic;
   signal din : std_logic_vector(10 downto 1);

   --Outputs
   signal dout : std_logic_vector(10 downto 1);

 
BEGIN
 
   uut: myrandom PORT MAP (
          Clk => Clk,
          reset => reset,
          din => din,
          dout => dout
   );

   process
      begin
         loop
           Clk <= '1';
           wait for 5 ns;
           Clk <= '0';
           wait for 5 ns;
         end loop;
   end process;
	
   stim_proc: process

   begin
		 reset <= '1';
		 din <= std_logic_vector(to_unsigned(50,din'length));
		 wait for 10ns;
       reset <= '0';
		 wait for 100ns;
		 reset <= '1';
		 din <= std_logic_vector(to_unsigned(80,din'length));
		 wait for 10ns;
       reset <= '0';
       wait;
		 
   end process;

END;
