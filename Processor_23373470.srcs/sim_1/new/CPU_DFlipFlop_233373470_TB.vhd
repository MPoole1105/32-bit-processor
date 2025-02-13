----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 18.12.2024 21:12:22
-- Design Name: 
-- Module Name: CPU_DFlipFlop_233373470_TB - Simulation
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

entity CPU_DFlipFlop_233373470_TB is
--  Port ( );
end CPU_DFlipFlop_233373470_TB;

architecture Simulation of CPU_DFlipFlop_233373470_TB is
    component CPU_DFlipFlop_23373470 is
        Port ( CLK: in STD_LOGIC;
               D: in STD_LOGIC;
               Reset : in STD_LOGIC;
               Q : out STD_LOGIC);
    end component;
    
   signal D_TB,Reset_TB,CLK_TB,Q_TB : std_logic := '0';
   constant STUDENTID : std_logic_vector (31 downto 0) := x"0164A69E";
   constant PERIOD : time := 300 ns;
begin
    
    	
   uut: CPU_DFlipFlop_23373470 port map (
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


end Simulation;
