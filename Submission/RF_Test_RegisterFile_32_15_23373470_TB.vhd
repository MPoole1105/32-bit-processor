----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 17.10.2024 17:47:21
-- Design Name: 
-- Module Name: RF_Test_RegisterFile_23373470_TB - Simulation
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

entity RF_Test_RegisterFile_23373470_TB is
--  Port ( );
end RF_Test_RegisterFile_23373470_TB;

architecture Simulation of RF_Test_RegisterFile_23373470_TB is
component RF_Test_RegisterFile_23373470 is

Port (  A_B_DataIn_Test : in std_logic_vector (1 downto 0);
        D_T : in std_logic_vector (31 downto 0);
        SA_T : in std_logic_vector (4 downto 0);
        SB_T : in std_logic_vector (4 downto 0);
        DR_T : in std_logic_vector (4 downto 0);
        TA_T : in std_logic_vector (3 downto 0);
        TB_T : in std_logic_vector (3 downto 0);
        TD_T : in std_logic_vector (3 downto 0);
        RW_T : in std_logic;
        CLK_T : in std_logic;
        Reset_T : in std_logic
        

);
end component;

Signal SA_TB, SB_TB, DR_TB : std_logic_vector (4 downto 0);
Signal TA_TB, TB_TB, TD_TB : std_logic_vector (3 downto 0) := (others => '0');
Signal D_TB : std_logic_vector (31 downto 0);
Signal A_B_DataIn_Test_TB : std_logic_vector (1 downto 0);
Signal RW_TB : std_logic := '1';
Signal CLK_TB : std_logic := '0';
Signal Reset_TB : std_logic := '1';

constant STUDENTID : std_logic_vector (31 downto 0) := x"0164A69E";
constant PERIOD : time := 300 ns;

begin

uut : RF_Test_RegisterFile_23373470 Port Map 
(
    SA_T => SA_TB,
    SB_T => SB_TB,
    DR_T => DR_TB,
    TA_T => TA_TB,
    TB_T => TB_TB,
    TD_T => TD_TB,
    A_B_DataIn_Test => A_B_DataIn_Test_TB,
    D_T => D_TB,
    CLK_T => CLK_TB,
    RW_T => RW_TB,
    Reset_T => Reset_TB
);

CLK_TB <= not CLK_TB after PERIOD/2;


stim_proc : process
begin 

A_B_DataIn_Test_TB <= "10"; --(Select A)

Reset_TB <= '1';
DR_TB <= "00000";
TD_TB <= "0000";
SA_TB <= "00000";
SB_TB <= "00000";
RW_TB <= '1' after PERIOD/4;

wait until CLK_Tb'event and CLK_TB='1';
Reset_TB <= '0' after PERIOD/4; 

wait until CLK_Tb'event and CLK_TB='1';

RW_TB <= '0' after PERIOD/4;

DR_TB <= "00000" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A69E" after PERIOD/4; 
SA_TB <= "00000" after PERIOD/4; 
SB_TB <= "00000" after PERIOD/4; 

RW_TB <= '1' after PERIOD/4;

wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;
DR_TB <= "00001" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A69F" after PERIOD/4; 
SB_TB <= "00001" after PERIOD/4; 
SA_TB <= "00001" after PERIOD/4; 
RW_TB <= '1' after PERIOD/4;


wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;
DR_TB <= "00010" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6A0" after PERIOD/4; 
SA_TB <= "00010" after PERIOD/4; 
SB_TB <= "00010" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            

wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "00011" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
D_TB  <= x"0164A6A1" after PERIOD/4; 
SB_TB <= "00011" after PERIOD/4; 
SA_TB <= "00011" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
DR_TB <= "00100" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6A2" after PERIOD/4; 
SA_TB <= "00100" after PERIOD/4; 
SB_TB <= "00100" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "00101" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6A3" after PERIOD/4; 
SB_TB <= "00101" after PERIOD/4; 
SA_TB <= "00101" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            

wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "00110" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6A4" after PERIOD/4; 
SA_TB <= "00110" after PERIOD/4; 
SB_TB <= "00110" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "00111" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6A5" after PERIOD/4; 
SB_TB <= "00111" after PERIOD/4; 
SA_TB <= "00111" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "01000" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6A6" after PERIOD/4; 
SA_TB <= "01000" after PERIOD/4; 
SB_TB <= "01000" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "01001" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6A7" after PERIOD/4; 
SB_TB <= "01001" after PERIOD/4; 
SA_TB <= "01001" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "01010" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6A8" after PERIOD/4; 
SA_TB <= "01010" after PERIOD/4; 
SB_TB <= "01010" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "01011" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6A9" after PERIOD/4; 
SB_TB <= "01011" after PERIOD/4; 
SA_TB <= "01011" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "01100" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6AA" after PERIOD/4; 
SA_TB <= "01100" after PERIOD/4; 
SB_TB <= "01100" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "01101" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6AB" after PERIOD/4; 
SB_TB <= "01101" after PERIOD/4; 
SA_TB <= "01101" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "01110" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6AC" after PERIOD/4; 
SA_TB <= "01110" after PERIOD/4; 
SB_TB <= "01110" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "01111" after PERIOD/4; 

wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6AD" after PERIOD/4; 
SB_TB <= "01111" after PERIOD/4; 
SA_TB <= "01111" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "10000" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6AE" after PERIOD/4; 
SA_TB <= "10000" after PERIOD/4; 
SB_TB <= "10000" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            

wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "10001" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6AF" after PERIOD/4; 
SB_TB <= "10001" after PERIOD/4; 
SA_TB <= "10001" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "10010" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B0" after PERIOD/4; 
SA_TB <= "10010" after PERIOD/4; 
SB_TB <= "10010" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "10011" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B1" after PERIOD/4; 
SB_TB <= "10011" after PERIOD/4; 
SA_TB <= "10011" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;   
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "10100" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B2" after PERIOD/4; 
SA_TB <= "10100" after PERIOD/4; 
SB_TB <= "10100" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "10101" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B3" after PERIOD/4; 
SB_TB <= "10101" after PERIOD/4; 
SA_TB <= "10101" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "10110" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B4" after PERIOD/4; 
SA_TB <= "10110" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "10111" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B5" after PERIOD/4; 
SB_TB <= "10111" after PERIOD/4; 
SA_TB <= "10111" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11000" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B6" after PERIOD/4; 
SA_TB <= "11000" after PERIOD/4;
SB_TB <= "11000" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11001" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B7" after PERIOD/4; 
SB_TB <= "11001" after PERIOD/4; 
SA_TB <= "11001" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            

wait until CLK_Tb'event and CLK_TB='1'; 
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11010" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B8" after PERIOD/4; 
SA_TB <= "11010" after PERIOD/4; 
SB_TB <= "11010" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            

wait until CLK_Tb'event and CLK_TB='1';
DR_TB <= "11011" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B9" after PERIOD/4; 
SB_TB <= "11011" after PERIOD/4; 
SA_TB <= "11011" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11100" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6BA" after PERIOD/4; 
SA_TB <= "11100" after PERIOD/4; 
SB_TB <= "11100" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
  
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11101" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6BB" after PERIOD/4; 
SB_TB <= "11101" after PERIOD/4; 
SA_TB <= "11101" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
  
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11110" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6BC" after PERIOD/4; 
SA_TB <= "11110" after PERIOD/4; 
SB_TB <= "11110" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11111" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6BD" after PERIOD/4; 
SB_TB <= "11111" after PERIOD/4; 
SB_TB <= "11111" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
DR_TB <= "00000" after PERIOD/4; 
TA_TB <= "0000" after PERIOD/4;
TD_TB <= "0000" after PERIOD/4;
SA_TB <= "00000" after PERIOD/4; 
SB_TB <= "00000" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';

wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0001" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6BE" after PERIOD/4; 
TA_TB <= "0001" after PERIOD/4;
TB_TB <= "0001" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0010" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6BF" after PERIOD/4; 
TB_TB <= "0010" after PERIOD/4;
TA_TB <= "0010" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0011" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C0" after PERIOD/4; 
TA_TB <= "0011" after PERIOD/4;
TB_TB <= "0011" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0100" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C1" after PERIOD/4; 
TB_TB <= "0100" after PERIOD/4;
TA_TB <= "0100" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0101" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C2" after PERIOD/4; 
TA_TB <= "0101" after PERIOD/4;
TB_TB <= "0101" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0110" after PERIOD/4;

wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C3" after PERIOD/4; 
TB_TB <= "0110" after PERIOD/4;
TA_TB <= "0110" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0111" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C4" after PERIOD/4; 
TA_TB <= "0111" after PERIOD/4;
TB_TB <= "0111" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
  
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1000" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C5" after PERIOD/4; 
TB_TB <= "1000" after PERIOD/4;
TA_TB <= "1000" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
  
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1001" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C6" after PERIOD/4; 
TA_TB <= "1001" after PERIOD/4;
TB_TB <= "1001" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
  
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1010" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C7" after PERIOD/4; 
TB_TB <= "1010" after PERIOD/4;
TA_TB <= "1010" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1011" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C8" after PERIOD/4; 
TA_TB <= "1011" after PERIOD/4;
TB_TB <= "1011" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1100" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C9" after PERIOD/4; 
TB_TB <= "1100" after PERIOD/4;
TA_TB <= "1100" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1101" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6CA" after PERIOD/4; 
TA_TB <= "1101" after PERIOD/4;
TB_TB <= "1101" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1110" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6CB" after PERIOD/4; 
TB_TB <= "1110" after PERIOD/4;
TA_TB <= "1110" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1'; 
  RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1111" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6CC" after PERIOD/4; 
TA_TB <= "1111" after PERIOD/4;
TB_TB <= "1111" after PERIOD/4;
 RW_TB <= '1' after PERIOD/4;   
  
  
wait until CLK_Tb'event and CLK_TB='1'; -- Perm to Perm
A_B_DataIn_Test_TB <= "00"; --(Select A)
TD_TB <= "0000"; --(Disable temp)
TA_TB <= "0000";
DR_TB <= "00011"; --(Move into 3)
SA_TB <= "00101"; --(Select from 5)
SB_TB <= "00000";         

wait until CLK_Tb'event and CLK_TB='1'; -- Perm to Temp
A_B_DataIn_Test_TB <= "00"; --(Select A)
TD_TB <= "0100"; --(Disable temp 4)
SA_TB <= "00101"; --(Select from 5)
        

wait until CLK_Tb'event and CLK_TB='1'; -- Temp to perm
A_B_DataIn_Test_TB <= "00"; --(Select A)
TD_TB <= "0000"; --(Disable temp)
DR_TB <= "00011"; --(Move into 3)
TA_TB <= "0101"; --(Select from 5)

wait until CLK_Tb'event and CLK_TB='1'; -- Temp to Temp
A_B_DataIn_Test_TB <= "00"; --(Select A)
TD_TB <= "0011"; --(Enable Temp and move into Temp 3)
TA_TB <= "0101"; --(Select from Temp 5)
     


wait until CLK_Tb'event and CLK_TB='1'; -- Perm to Perm
A_B_DataIn_Test_TB <= "01"; --(Select B)
TD_TB <= "0000"; --(Disable temp)
DR_TB <= "01001"; --(Move into 9)
TA_TB <= "0000";
SB_TB <= "00101"; --(Select from 5)
SA_TB <= "00000";         

wait until CLK_Tb'event and CLK_TB='1'; --  Perm to Temp
A_B_DataIn_Test_TB <= "01"; --(Select B)
TD_TB <= "0001"; --(Enable Temp and move into Temp 1)
TA_TB <= "0000";
SB_TB <= "00101"; --(Select from 5)
         

wait until CLK_Tb'event and CLK_TB='1'; --Temp to Perm 
A_B_DataIn_Test_TB <= "01"; --(Select B)
TD_TB <= "0000"; -- (Disable Temp)
DR_TB <= "00011"; --(Move into Perm 3)
TB_TB <= "0010"; --(Select from Temp 2)

wait until CLK_Tb'event and CLK_TB='1'; -- Temp to Temp
A_B_DataIn_Test_TB <= "01"; --(Select B)
TD_TB <= "0011"; --(Enable Temp and move into Temp 3)
TB_TB <= "0101"; --(Select from Temp 5)

wait until CLK_Tb'event and CLK_TB='1'; -- Temp to Temp

end process;


end Simulation;
