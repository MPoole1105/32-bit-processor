----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole Engineer: 
-- 
-- Create Date: 16.10.2024 09:15:23
-- Design Name: 
-- Module Name: RF_TempDestRegDecoder_23373470_TB - Simulation
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

entity RF_TempDestRegDecoder_23373470_TB is
--  Port ( );
end RF_TempDestRegDecoder_23373470_TB;

architecture Simulation of RF_TempDestRegDecoder_23373470_TB is
COMPONENT RF_TempDestRegDecoder_23373470
    Port ( S : in STD_LOGIC_VECTOR (3 downto 0);
           D0, D1, D2, D3, D4, D5, D6, D7,  D8, D9, D10, D11, D12, D13, D14, D15 : out STD_LOGIC);
    END COMPONENT;

   --Inputs Signals 
   signal S_TB : std_logic_vector(3 downto 0):= (others => '0');
   --Output Signal   
   signal D0_TB, D1_TB, D2_TB, D3_TB : STD_LOGIC := '0';
   signal D4_TB, D5_TB, D6_TB, D7_TB : STD_LOGIC := '0';
   signal D8_TB, D9_TB, D10_TB, D11_TB : STD_LOGIC := '0';
   signal D12_TB, D13_TB, D14_TB, D15_TB : STD_LOGIC := '0';
   
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
   constant WaitPeriod : time := 150ns;   
begin

 -- Instantiate the Unit Under Test (UUT)
   uut: RF_TempDestRegDecoder_23373470 PORT MAP (
          S => S_TB, 
          D0 => D0_TB, 
          D1 => D1_TB, 
          D2 => D2_TB, 
          D3 => D3_TB, 
          D4 => D4_TB, 
          D5 => D5_TB, 
          D6 => D6_TB, 
          D7 => D7_TB,
          D8 => D8_TB, 
          D9 => D9_TB, 
          D10 => D10_TB, 
          D11 => D11_TB, 
          D12 => D12_TB, 
          D13 => D13_TB, 
          D14 => D14_TB, 
          D15 => D15_TB);
         
      stim_proc : process 
      begin		
      S_TB <= "0000";  -- case A       
      wait for WaitPeriod;	
      S_TB <= "0001"; -- case B       
      wait for WaitPeriod;	
      S_TB <= "0010"; -- case C       
      wait for WaitPeriod;	
      S_TB <= "0011"; -- case D        
      wait for WaitPeriod;	
      S_TB <= "0100"; -- case E       
      wait for WaitPeriod;	
      S_TB <= "0101"; -- case F       
      wait for WaitPeriod;	
      S_TB <= "0110"; -- case G       
      wait for WaitPeriod;	
      S_TB <= "0111"; -- case H        
      wait for WaitPeriod;
      S_TB <= "1000";  -- case A       
      wait for WaitPeriod;	
      S_TB <= "1001"; -- case B       
      wait for WaitPeriod;	
      S_TB <= "1010"; -- case C       
      wait for WaitPeriod;	
      S_TB <= "1011"; -- case D        
      wait for WaitPeriod;	
      S_TB <= "1100"; -- case E       
      wait for WaitPeriod;	
      S_TB <= "1101"; -- case F       
      wait for WaitPeriod;	
      S_TB <= "1110"; -- case G       
      wait for WaitPeriod;	
      S_TB <= "1111"; -- case H        
      wait for WaitPeriod;	  	  
      
end process;
end Simulation;


