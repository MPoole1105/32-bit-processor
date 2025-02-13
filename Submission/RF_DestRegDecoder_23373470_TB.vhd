----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 16.10.2024 09:26:20
-- Design Name: 
-- Module Name: RF_DestRegDecoder_23373470_TB - Behavioral
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

entity RF_DestRegDecoder_23373470_TB is
--  Port ( )
end RF_DestRegDecoder_23373470_TB;

architecture Simulation of RF_DestRegDecoder_23373470_TB is
COMPONENT RF_DestRegDecoder_23373470
    Port ( S : in STD_LOGIC_VECTOR (4 downto 0);
           D0, D1, D2, D3, D4, D5, D6, D7,  D8, D9, D10, D11, D12, D13, D14, D15 : out STD_LOGIC;
           D16, D17, D18, D19, D20, D21, D22, D23, D24, D25, D26, D27, D28, D29, D30, D31 : out STD_LOGIC);
    END COMPONENT;

   --Inputs Signals
   signal S_TB : std_logic_vector(4 downto 0):= (others => '0');
   --Output Signal   
   signal D0_TB, D1_TB, D2_TB, D3_TB : STD_LOGIC := '0';
   signal D4_TB, D5_TB, D6_TB, D7_TB : STD_LOGIC := '0';
   signal D8_TB, D9_TB, D10_TB, D11_TB : STD_LOGIC := '0';
   signal D12_TB, D13_TB, D14_TB, D15_TB : STD_LOGIC := '0';
   signal D16_TB, D17_TB, D18_TB, D19_TB : STD_LOGIC := '0';
   signal D20_TB, D21_TB, D22_TB, D23_TB : STD_LOGIC := '0';
   signal D24_TB, D25_TB, D26_TB, D27_TB : STD_LOGIC := '0';
   signal D28_TB, D29_TB, D30_TB, D31_TB : STD_LOGIC := '0';
   
   
   -- StudentID e.g. 26 33 57 25(DEC) = 1 91 D9 ED(HEX)
   constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
   constant WaitPeriod : time := 150ns;   
begin
-- Instantiate the Unit Under Test (UUT)
   uut: RF_DestRegDecoder_23373470 PORT MAP (
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
          D15 => D15_TB,
          D16 => D16_TB, 
          D17 => D17_TB, 
          D18 => D18_TB, 
          D19 => D19_TB, 
          D20 => D20_TB, 
          D21 => D21_TB, 
          D22 => D22_TB, 
          D23 => D23_TB,
          D24 => D24_TB, 
          D25 => D25_TB, 
          D26 => D26_TB, 
          D27 => D27_TB, 
          D28 => D28_TB, 
          D29 => D29_TB, 
          D30 => D30_TB, 
          D31 => D31_TB);
          
     stim_proc : process 
      begin		
      S_TB <= "00000";  -- case A       
      wait for WaitPeriod;	
      S_TB <= "00001"; -- case B       
      wait for WaitPeriod;	
      S_TB <= "00010"; -- case C       
      wait for WaitPeriod;	
      S_TB <= "00011"; -- case D        
      wait for WaitPeriod;	
      S_TB <= "00100"; -- case E       
      wait for WaitPeriod;	
      S_TB <= "00101"; -- case F       
      wait for WaitPeriod;	
      S_TB <= "00110"; -- case G       
      wait for WaitPeriod;	
      S_TB <= "00111"; -- case H        
      wait for WaitPeriod;
      S_TB <= "01000";  -- case A       
      wait for WaitPeriod;	
      S_TB <= "01001"; -- case B       
      wait for WaitPeriod;	
      S_TB <= "01010"; -- case C       
      wait for WaitPeriod;	
      S_TB <= "01011"; -- case D        
      wait for WaitPeriod;	
      S_TB <= "01100"; -- case E       
      wait for WaitPeriod;	
      S_TB <= "01101"; -- case F       
      wait for WaitPeriod;	
      S_TB <= "01110"; -- case G       
      wait for WaitPeriod;	
      S_TB <= "01111"; -- case H        
      wait for WaitPeriod;
      S_TB <= "10000";  -- case A       
      wait for WaitPeriod;	
      S_TB <= "10001"; -- case B       
      wait for WaitPeriod;	
      S_TB <= "10010"; -- case C       
      wait for WaitPeriod;	
      S_TB <= "10011"; -- case D        
      wait for WaitPeriod;	
      S_TB <= "10100"; -- case E       
      wait for WaitPeriod;	
      S_TB <= "10101"; -- case F       
      wait for WaitPeriod;	
      S_TB <= "10110"; -- case G       
      wait for WaitPeriod;	
      S_TB <= "10111"; -- case H        
      wait for WaitPeriod;
      S_TB <= "11000";  -- case A       
      wait for WaitPeriod;	
      S_TB <= "11001"; -- case B       
      wait for WaitPeriod;	
      S_TB <= "11010"; -- case C       
      wait for WaitPeriod;	
      S_TB <= "11011"; -- case D        
      wait for WaitPeriod;	
      S_TB <= "11100"; -- case E       
      wait for WaitPeriod;	
      S_TB <= "11101"; -- case F       
      wait for WaitPeriod;	
      S_TB <= "11110"; -- case G       
      wait for WaitPeriod;	
      S_TB <= "11111"; -- case H        
      wait for WaitPeriod;	  	  
      
end process;

end Simulation;
