
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 15.10.2024 17:06:19
-- Design Name: 
-- Module Name: RF_DFlipFlop_23373470_TB - Behavioral
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

entity RF_DFlipFlop_23373470_TB is
--  Port ( );
end RF_DFlipFlop_23373470_TB;

architecture Behavioral of RF_DFlipFlop_23373470_TB is
component RF_DFlipFlop_23373470
    Port ( CLK, D, Reset : in STD_LOGIC;
           Q : out STD_LOGIC);
           
        
end component;


    signal D_TB : std_logic:= '0';
    signal Reset_TB : std_logic:= '0';
    signal CLK_TB : std_logic:= '0';
    signal Q_TB : std_logic := '0';
    
    constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";    
    constant PERIOD : time := 50ns;
    
    
begin
    
    uut: RF_DFlipFlop_23373470 port map (
          CLK => CLK_TB,
          D => D_TB,
          Reset => Reset_TB,
          Q => Q_TB
        );
    
           
   CLK_TB <= not CLK_TB after PERIOD/2;
   
   stim_proc: process

   begin
 
      wait until CLK_TB'event and CLK_TB='1';
      Reset_TB <= '1' after PERIOD/4; 

      wait until CLK_TB'event and CLK_TB='1';
      Reset_TB <= '0' after PERIOD/4; 
   
      wait until CLK_TB'event and CLK_TB='1';
      D_TB <= '1' after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      D_TB <= '0' after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      D_TB <= '1' after PERIOD/4;
      
      wait until CLK_TB'event and CLK_TB='1';
      D_TB <= '0' after PERIOD/4;

   end process;


end Behavioral;
