--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:02:52 03/08/2015
-- Design Name:   
-- Module Name:   C:/Documents and Settings/Student/Desktop/Regfile/regfile_test.vhd
-- Project Name:  Regfile
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: regfile
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY multicyclefsm_test IS
END multicyclefsm_test;
 
ARCHITECTURE behavior OF multicyclefsm_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component multicyclefsm 
    port( 
          clk : in std_logic;
          reset : in std_logic;
          op : in std_logic_vector(5 downto 0);
          pcwrite : out std_logic;
          pcwritecon: out std_logic;
          iord: out std_logic;
          memread: out std_logic;
          memwrite: out std_logic;
          irwrite: out std_logic;
          memtoreg: out std_logic;
          pcsource: out std_logic_vector(1 downto 0);
          aluop: out std_logic_vector(1 downto 0);
          alusrcb: out std_logic_vector(1 downto 0);
          alusrca: out std_logic;
          regwrite: out std_logic;
          regdst : out std_logic;
          statenum : out std_logic_vector(3 downto 0));
    end component;

   --Inputs
	signal clk : std_logic;
	signal reset : std_logic;
	signal op : std_logic_vector(5 downto 0);

 	--Outputs
   signal pcwrite : std_logic;
   signal pcwritecon: std_logic;
   signal iord: std_logic;
   signal memread: std_logic;
   signal memwrite: std_logic;
   signal irwrite: std_logic;
   signal memtoreg: std_logic;
   signal pcsource: std_logic_vector(1 downto 0);
   signal aluop: std_logic_vector(1 downto 0);
   signal alusrcb: std_logic_vector(1 downto 0);
   signal alusrca: std_logic;
   signal regwrite: std_logic;
   signal regdst : std_logic;
   signal statenum : std_logic_vector(3 downto 0);
	
	constant Clk_period : time := 5ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multicyclefsm PORT MAP (
          clk => clk,
          reset => reset,
          op => op,
          pcwrite => pcwrite,
          pcwritecon => pcwritecon,
          iord => iord,
          memread => memread,
          memwrite => memwrite,
          irwrite => irwrite,
          memtoreg => memtoreg,
          pcsource => pcsource,
          aluop => aluop,
          alusrcb => alusrcb,
          alusrca => alusrca,
          regwrite => regwrite,
          regdst => regdst,
          statenum => statenum
   );
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
		Clk <= '0';
   end process;
 

   -- Stimulus process
   stim_proc: process
	
   begin		
       wait for 2ns;

       reset <= '1';
       op <= "000000";
	   wait for 2ns;
	   reset <= '0';
       wait for 50ns;
	
       reset <= '1';
       op <= "000001";
	   wait for 2ns;
	   reset <= '0';
       wait for 50ns;

       reset <= '1';
       op <= "000010";
	   wait for 2ns;
	   reset <= '0';
       wait for 50ns;
	
       reset <= '1';
       op <= "000011";
	   wait for 2ns;
	   reset <= '0';
       wait for 50ns;
	
       reset <= '1';
       op <= "111111";
	   wait for 2ns;
	   reset <= '0';
       wait for 50ns;

       wait;
   end process;

END;
