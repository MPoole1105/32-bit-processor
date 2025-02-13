 
 
-- Engineer: Matthew Poole 
-- 
-- Create Date: 15.10.2024 19:28:03
-- Design Name: 
-- Module Name: RF_Register_23373470_TB - Simulation
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF_Register_23373470_TB is
--  Port ( );
end RF_Register_23373470_TB;

architecture Simulation of RF_Register_23373470_TB is

component RF_Register_23373470 is
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
           Load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0));      
end component;

--Inputs
    signal D_TB : std_logic_vector(31 downto 0):= (others => '0');
    signal CLK_TB : std_logic:= '0';
    signal Load_TB : std_logic:= '0';
    signal Reset_TB : std_logic:= '0';
     
--Outputs
    signal Q_TB : std_logic_vector(31 downto 0):= (others => '0');
   
-- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";  
    constant PERIOD : time := 100ns;


begin

 uut: RF_Register_23373470 port map (
          D => D_TB,
          Load => Load_TB,
          CLK => CLK_TB,
          Reset => Reset_TB,
          Q => Q_TB
        );
        
 CLK_TB <= not CLK_TB after PERIOD/2;
 
 stim_proc: process
    begin
        wait until CLK_TB'event and CLK_TB='1';
        wait until CLK_TB'event and CLK_TB='1';
        D_TB <= x"0164A69E" after PERIOD/4;
        Reset_TB <= '0' after PERIOD/4;
        Load_TB <= '1' after PERIOD/4;
       
        wait until CLK_TB'event and CLK_TB='1';
        wait until CLK_TB'event and CLK_TB='1';
        Reset_TB <= '1' after PERIOD/4;
        end process;
end Simulation;
