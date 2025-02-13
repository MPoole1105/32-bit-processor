
-- Company: 
-- Engineer: Matthew Poole 
-- 
-- Create Date: 16.10.2024 14:09:14
-- Design Name: 
-- Module Name: RF_RegisterFile_32_15_23373470_TB - Simulation
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

entity RF_RegisterFile_32_15_23373470_TB is
--  Port ( );
end RF_RegisterFile_32_15_23373470_TB;

architecture Simulation of RF_RegisterFile_32_15_23373470_TB is

component RF_RegisterFile_32_15_2337340 is
Port ( SA : in std_logic_vector (4 downto 0);
SB : in std_logic_vector (4 downto 0);
DR : in std_logic_vector (4 downto 0);
TA : in std_logic_vector (3 downto 0);
TB : in std_logic_vector (3 downto 0);
TD : in std_logic_vector (3 downto 0);
RW : in std_logic;
CLK : in std_logic;
Reset : in std_logic;
D : in std_logic_vector (31 downto 0);
A : out std_logic_vector (31 downto 0);
B : out std_logic_vector (31 downto 0)
);
end component;

Signal SA_TB, SB_TB, DR_TB : std_logic_vector (4 downto 0);
Signal TA_TB, TB_TB, TD_TB : std_logic_vector (3 downto 0) := (others => '0');
Signal D_TB, A_TB, B_TB : std_logic_vector (31 downto 0);
Signal RW_TB : std_logic := '1';
Signal CLK_TB : std_logic := '0';
Signal Reset_TB : std_logic := '1';

constant STUDENTID : std_logic_vector (31 downto 0) := x"0164A69E";
constant PERIOD : time := 300 ns;




begin


uut : RF_RegisterFile_32_15_2337340 Port Map 
(
SA => SA_TB,
SB => SB_TB,
DR => DR_TB,
TA => TA_TB,
TB => TB_TB,
TD => TD_TB,
D => D_TB,
A => A_TB,
B => B_TB,
CLK => CLK_TB,
RW => RW_TB,
Reset => Reset_TB
);

CLK_TB <= not CLK_TB after PERIOD/2;


stim_proc : process
begin 



Reset_TB <= '1';
wait for PERIOD;
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
D_TB  <= x"0164A6B2" after PERIOD/4; 
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "10100" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B3" after PERIOD/4; 
SA_TB <= "10100" after PERIOD/4; 
SB_TB <= "10100" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "10101" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B4" after PERIOD/4; 
SB_TB <= "10101" after PERIOD/4; 
SA_TB <= "10101" after PERIOD/4; 
RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "10110" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B5" after PERIOD/4; 
SA_TB <= "10110" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "10111" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B6" after PERIOD/4; 
SB_TB <= "10111" after PERIOD/4; 
SA_TB <= "10111" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11000" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B7" after PERIOD/4; 
SA_TB <= "11000" after PERIOD/4;
SB_TB <= "11000" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11001" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B8" after PERIOD/4; 
SB_TB <= "11001" after PERIOD/4; 
SA_TB <= "11001" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            

wait until CLK_Tb'event and CLK_TB='1'; 
RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11010" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6B9" after PERIOD/4; 
SA_TB <= "11010" after PERIOD/4; 
SB_TB <= "11010" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            

wait until CLK_Tb'event and CLK_TB='1';
DR_TB <= "11011" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6BA" after PERIOD/4; 
SB_TB <= "11011" after PERIOD/4; 
SA_TB <= "11011" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11100" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6BB" after PERIOD/4; 
SA_TB <= "11100" after PERIOD/4; 
SB_TB <= "11100" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
  
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11101" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6BC" after PERIOD/4; 
SB_TB <= "11101" after PERIOD/4; 
SA_TB <= "11101" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
  
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11110" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6BD" after PERIOD/4; 
SA_TB <= "11110" after PERIOD/4; 
SB_TB <= "11110" after PERIOD/4; 
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
DR_TB <= "11111" after PERIOD/4; 
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6BE" after PERIOD/4; 
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
D_TB  <= x"0164A6BF" after PERIOD/4; 
TA_TB <= "0001" after PERIOD/4;
TB_TB <= "0001" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0010" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C0" after PERIOD/4; 
TB_TB <= "0010" after PERIOD/4;
TA_TB <= "0010" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0011" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C1" after PERIOD/4; 
TA_TB <= "0011" after PERIOD/4;
TB_TB <= "0011" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0100" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C2" after PERIOD/4; 
TB_TB <= "0100" after PERIOD/4;
TA_TB <= "0100" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0101" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C3" after PERIOD/4; 
TA_TB <= "0101" after PERIOD/4;
TB_TB <= "0101" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0110" after PERIOD/4;

wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C4" after PERIOD/4; 
TB_TB <= "0110" after PERIOD/4;
TA_TB <= "0110" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "0111" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C5" after PERIOD/4; 
TA_TB <= "0111" after PERIOD/4;
TB_TB <= "0111" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
  
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1000" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C6" after PERIOD/4; 
TB_TB <= "1000" after PERIOD/4;
TA_TB <= "1000" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
  
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1001" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C7" after PERIOD/4; 
TA_TB <= "1001" after PERIOD/4;
TB_TB <= "1001" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
  
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1010" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C8" after PERIOD/4; 
TB_TB <= "1010" after PERIOD/4;
TA_TB <= "1010" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1011" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6C9" after PERIOD/4; 
TA_TB <= "1011" after PERIOD/4;
TB_TB <= "1011" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1100" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6CA" after PERIOD/4; 
TB_TB <= "1100" after PERIOD/4;
TA_TB <= "1100" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1101" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6CB" after PERIOD/4; 
TA_TB <= "1101" after PERIOD/4;
TB_TB <= "1101" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1';
   RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1110" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6CC" after PERIOD/4; 
TB_TB <= "1110" after PERIOD/4;
TA_TB <= "1110" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            
wait until CLK_Tb'event and CLK_TB='1'; 
  RW_TB <= '0' after PERIOD/4;            
TD_TB <= "1111" after PERIOD/4;
wait until CLK_Tb'event and CLK_TB='1';
D_TB  <= x"0164A6CD" after PERIOD/4; 
TA_TB <= "1111" after PERIOD/4;
TB_TB <= "1111" after PERIOD/4;
  RW_TB <= '1' after PERIOD/4;            

end process;


end Simulation;
