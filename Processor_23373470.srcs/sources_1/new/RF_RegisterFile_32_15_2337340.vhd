
-- Company: 
-- Engineer: Matthew Poole
--
-- Create Date: 16.10.2024 10:00:05
-- Design Name: 
-- Module Name: RF_RegisterFile_32_15_2337340 - Behaviourial
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



entity RF_RegisterFile_32_15_2337340 is
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
end RF_RegisterFile_32_15_2337340;

architecture Behaviourial of RF_RegisterFile_32_15_2337340 is

COMPONENT RF_TempDestRegDecoder_23373470
    Port ( S : in STD_LOGIC_VECTOR (3 downto 0);
           D0, D1, D2, D3, D4, D5, D6, D7,  D8, D9, D10, D11, D12, D13, D14, D15 : out STD_LOGIC);
    END COMPONENT;

COMPONENT RF_DestRegDecoder_23373470
    Port ( S : in STD_LOGIC_VECTOR (4 downto 0);
           D0, D1, D2, D3, D4, D5, D6, D7,  D8, D9, D10, D11, D12, D13, D14, D15 : out STD_LOGIC;
           D16, D17, D18, D19, D20, D21, D22, D23, D24, D25, D26, D27, D28, D29, D30, D31 : out STD_LOGIC);
    END COMPONENT;
    
component RF_Mux_32_32Bit_23373470 is
Port(I0 : in std_logic_vector (31 downto 0);
         I1 : in std_logic_vector (31 downto 0);
         I2 : in std_logic_vector (31 downto 0);
         I3 : in std_logic_vector (31 downto 0);
         I4 : in std_logic_vector (31 downto 0);
         I5 : in std_logic_vector (31 downto 0);
         I6 : in std_logic_vector (31 downto 0);
         I7 : in std_logic_vector (31 downto 0);
         I8 : in std_logic_vector (31 downto 0);
         I9 : in std_logic_vector (31 downto 0);
         I10 : in std_logic_vector (31 downto 0);
         I11 : in std_logic_vector (31 downto 0);
         I12 : in std_logic_vector (31 downto 0);
         I13 : in std_logic_vector (31 downto 0);
         I14 : in std_logic_vector (31 downto 0);
         I15 : in std_logic_vector (31 downto 0);
         I16 : in std_logic_vector (31 downto 0);
         I17 : in std_logic_vector (31 downto 0);
         I18 : in std_logic_vector (31 downto 0);
         I19 : in std_logic_vector (31 downto 0);
         I20 : in std_logic_vector (31 downto 0);
         I21 : in std_logic_vector (31 downto 0);
         I22 : in std_logic_vector (31 downto 0);
         I23 : in std_logic_vector (31 downto 0);
         I24 : in std_logic_vector (31 downto 0);
         I25 : in std_logic_vector (31 downto 0);
         I26 : in std_logic_vector (31 downto 0);
         I27 : in std_logic_vector (31 downto 0);
         I28 : in std_logic_vector (31 downto 0);
         I29 : in std_logic_vector (31 downto 0);
         I30 : in std_logic_vector (31 downto 0);
         I31 : in std_logic_vector (31 downto 0);
         S : in std_logic_vector (4 downto 0);
         Y : out std_logic_vector (31 downto 0));        
end component;

component RF_Mux_16_32Bit_23373470 is

    Port(I0 : in std_logic_vector (31 downto 0);
         I1 : in std_logic_vector (31 downto 0);
         I2 : in std_logic_vector (31 downto 0);
         I3 : in std_logic_vector (31 downto 0);
         I4 : in std_logic_vector (31 downto 0);
         I5 : in std_logic_vector (31 downto 0);
         I6 : in std_logic_vector (31 downto 0);
         I7 : in std_logic_vector (31 downto 0);
         I8 : in std_logic_vector (31 downto 0);
         I9 : in std_logic_vector (31 downto 0);
         I10 : in std_logic_vector (31 downto 0);
         I11 : in std_logic_vector (31 downto 0);
         I12 : in std_logic_vector (31 downto 0);
         I13 : in std_logic_vector (31 downto 0);
         I14 : in std_logic_vector (31 downto 0);
         I15 : in std_logic_vector (31 downto 0);
         S : in std_logic_vector (3 downto 0);
         Y : out std_logic_vector (31 downto 0));
         
         end component;

component RF_Register_23373470 is
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
           Load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0));      
end component;

  constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
  constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 
  constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
  constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
  constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
  constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
  constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1 
  
  
signal Q00,Q01,Q02,Q03, Q04,Q05,Q06,Q07,Q08,Q09,Q10,Q11,Q12,Q13,Q14,Q15 : std_logic;
signal VQ00,VQ01,VQ02,VQ03,VQ04,VQ05,VQ06,VQ07,VQ08,VQ09,VQ10,VQ11,VQ12,VQ13,VQ14,VQ15,VQ16,VQ17,VQ18,VQ19,VQ20,VQ21,VQ22,VQ23,VQ24,VQ25,VQ26,VQ27,VQ28,VQ29,VQ30,VQ31 : std_logic_vector (31 downto 0);
signal TQ00,TQ01,TQ02,TQ03,TQ04,TQ05,TQ06,TQ07,TQ08,TQ09,TQ10,TQ11,TQ12,TQ13,TQ14,TQ15,TQ16,TQ17,TQ18,TQ19,TQ20,TQ21,TQ22,TQ23,TQ24,TQ25,TQ26,TQ27,TQ28,TQ29,TQ30,TQ31 : std_logic_vector (31 downto 0);
signal ZA,ZB: std_logic_vector (31 downto 0);
signal RF_D00,RF_D01,RF_D02,RF_D03, RF_D04,RF_D05,RF_D06,RF_D07,RF_D08,RF_D09,RF_D10,RF_D11,RF_D12,RF_D13,RF_D14,RF_D15 ,RF_D16,RF_D17,RF_D18,RF_D19, RF_D20 ,RF_D21,RF_D22,RF_D23,RF_D24,RF_D25,RF_D26,RF_D27,RF_D28,RF_D29,RF_D30,RF_D31 : std_logic;
signal AND_gate_to_Register0_i, AND_gate_to_Register1_i,AND_gate_to_Register2_i,AND_gate_to_Register3_i,AND_gate_to_Register4_i ,AND_gate_to_Register5_i,AND_gate_to_Register6_i,AND_gate_to_Register7_i, AND_gate_to_Register8_i, AND_gate_to_Register9_i,AND_gate_to_Register10_i,AND_gate_to_Register11_i,AND_gate_to_Register12_i ,AND_gate_to_Register13_i,AND_gate_to_Register14_i,AND_gate_to_Register15_i, AND_gate_to_Register16_i, AND_gate_to_Register17_i,AND_gate_to_Register18_i,AND_gate_to_Register19_i,AND_gate_to_Register20_i ,AND_gate_to_Register21_i,AND_gate_to_Register22_i,AND_gate_to_Register23_i, AND_gate_to_Register24_i, AND_gate_to_Register25_i,AND_gate_to_Register26_i,AND_gate_to_Register27_i,AND_gate_to_Register28_i ,AND_gate_to_Register29_i,AND_gate_to_Register30_i,AND_gate_to_Register31_i : std_logic;
signal AND_gate_to_Register00_i, AND_gate_to_Register01_i,AND_gate_to_Register02_i,AND_gate_to_Register03_i,AND_gate_to_Register04_i ,AND_gate_to_Register05_i,AND_gate_to_Register06_i,AND_gate_to_Register07_i, AND_gate_to_Register08_i, AND_gate_to_Register09_i,AND_gate_to_Register010_i,AND_gate_to_Register011_i,AND_gate_to_Register012_i ,AND_gate_to_Register013_i,AND_gate_to_Register014_i,AND_gate_to_Register015_i, AND_gate_to_Register016_i, AND_gate_to_Register017_i,AND_gate_to_Register018_i,AND_gate_to_Register019_i,AND_gate_to_Register020_i ,AND_gate_to_Register021_i,AND_gate_to_Register022_i,AND_gate_to_Register023_i, AND_gate_to_Register024_i, AND_gate_to_Register025_i,AND_gate_to_Register026_i,AND_gate_to_Register027_i,AND_gate_to_Register028_i ,AND_gate_to_Register029_i,AND_gate_to_Register030_i,AND_gate_to_Register031_i : std_logic;
signal AND_gate_to_TempReg0_i, AND_gate_to_TempReg1_i,AND_gate_to_TempReg2_i,AND_gate_to_TempReg3_i,AND_gate_to_TempReg4_i ,AND_gate_to_TempReg5_i,AND_gate_to_TempReg6_i,AND_gate_to_TempReg7_i, AND_gate_to_TempReg8_i, AND_gate_to_TempReg9_i,AND_gate_to_TempReg10_i,AND_gate_to_TempReg11_i,AND_gate_to_TempReg12_i ,AND_gate_to_TempReg13_i,AND_gate_to_TempReg14_i,AND_gate_to_TempReg15_i: std_logic;


begin

DestTempReg_Decoder: RF_TempDestRegDecoder_23373470 PORT MAP (
          S => TD, 
          D0 => Q00, 
          D1 => Q01, 
          D2 => Q02, 
          D3 => Q03, 
          D4 => Q04, 
          D5 => Q05, 
          D6 => Q06, 
          D7 => Q07,
          D8 => Q08, 
          D9 => Q09, 
          D10 => Q10, 
          D11 => Q11, 
          D12 => Q12, 
          D13 => Q13, 
          D14 => Q14, 
          D15 => Q15);

 DestReg_Decoder: RF_DestRegDecoder_23373470 PORT MAP (
          S => DR, 
          D0 => RF_D00, 
          D1 => RF_D01, 
          D2 => RF_D02, 
          D3 => RF_D03, 
          D4 => RF_D04, 
          D5 => RF_D05, 
          D6 => RF_D06, 
          D7 => RF_D07,
          D8 => RF_D08, 
          D9 => RF_D09, 
          D10 => RF_D10, 
          D11 => RF_D11, 
          D12 => RF_D12, 
          D13 => RF_D13, 
          D14 => RF_D14, 
          D15 => RF_D15,
          D16 => RF_D16, 
          D17 => RF_D17, 
          D18 => RF_D18, 
          D19 => RF_D19, 
          D20 => RF_D20, 
          D21 => RF_D21, 
          D22 => RF_D22, 
          D23 => RF_D23,
          D24 => RF_D24, 
          D25 => RF_D25, 
          D26 => RF_D26, 
          D27 => RF_D27, 
          D28 => RF_D28, 
          D29 => RF_D29, 
          D30 => RF_D30, 
          D31 => RF_D31);



        
RF_TempReg1: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg1_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ01
        );
        
RF_TempReg2: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg2_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ02
        );
        
RF_TempReg3: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg3_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ03
        );
        
        
RF_TempReg4: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg4_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ04
        );
        
RF_TempReg5: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg5_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ05        );
        
RF_TempReg6: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg6_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ06
        );
        
RF_TempReg7: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg7_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ07
        );
        
RF_TempReg8: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg8_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ08
        );
        
RF_TempReg9: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg9_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ09
        );
        
RF_TempReg10: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg10_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ10
        );
        
RF_TempReg11: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg11_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ11
        );
        
RF_TempReg12: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg12_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ12
        );
        
RF_TempReg13: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg13_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ13
        );
        
RF_TempReg14: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg14_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ14
        );
       
RF_TempReg15: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_TempReg15_i,
          CLK => CLK,
          Reset => Reset,
          Q => TQ15
        );
        

RF_Register0: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register0_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ00
    );
        
RF_Register1: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register1_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ01
        );
        
RF_Register2: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register2_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ02
        );
        
RF_Register3: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register3_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ03
        );
        
        
RF_Register4: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register4_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ04
        );
        
RF_Register5: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register5_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ05        );
        
RF_Register6: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register6_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ06
        );
        
RF_Register7: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register7_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ07
        );
        
RF_Register8: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register8_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ08
        );
        
RF_Register9: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register9_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ09
        );
        
RF_Register10: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register10_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ10
        );
        
RF_Register11: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register11_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ11
        );
        
RF_Register12: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register12_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ12
        );
        
RF_Register13: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register13_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ13
        );
        
RF_Register14: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register14_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ14
        );
       
RF_Register15: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register15_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ15
        );
            
 
RF_Register16: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register16_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ16
        );
        
RF_Register17: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register17_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ17
        );
        
RF_Register18: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register18_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ18
        );
        
RF_Register19: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register19_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ19
        );
        
        
RF_Register20: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register20_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ20
        );
        
RF_Register21: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register21_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ21
        );
        
RF_Register22: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register22_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ22
        );
        
RF_Register23: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register23_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ23
        );
        
RF_Register24: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register24_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ24
        );
        
RF_Register25: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register25_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ25
        );
        
RF_Register26: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register26_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ26
        );
        
RF_Register27: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register27_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ27
        );
        
RF_Register28: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register28_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ28
        );
        
RF_Register29: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register29_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ29
        );
        
RF_Register30: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register30_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ30
        );
       
RF_Register31: RF_Register_23373470 port map (
          D => D,
          Load => AND_gate_to_Register31_i,
          CLK => CLK,
          Reset => Reset,
          Q => VQ31
        );
        
        

        
AND_gate_to_Register00_i <= RW AND RF_D00 after AND_gate_delay;
AND_gate_to_Register01_i <= RW AND RF_D01 after AND_gate_delay;
AND_gate_to_Register02_i <= RW AND RF_D02 after AND_gate_delay;
AND_gate_to_Register03_i <= RW AND RF_D03 after AND_gate_delay;
AND_gate_to_Register04_i <= RW AND RF_D04 after AND_gate_delay;
AND_gate_to_Register05_i <= RW AND RF_D05 after AND_gate_delay;
AND_gate_to_Register06_i <= RW AND RF_D06 after AND_gate_delay;
AND_gate_to_Register07_i <= RW AND RF_D07 after AND_gate_delay;
AND_gate_to_Register08_i <= RW AND RF_D08 after AND_gate_delay;
AND_gate_to_Register09_i <= RW AND RF_D09 after AND_gate_delay;
AND_gate_to_Register010_i <= RW AND RF_D10 after AND_gate_delay;
AND_gate_to_Register011_i <= RW AND RF_D11 after AND_gate_delay;
AND_gate_to_Register012_i <= RW AND RF_D12 after AND_gate_delay;
AND_gate_to_Register013_i <= RW AND RF_D13 after AND_gate_delay;
AND_gate_to_Register014_i <= RW AND RF_D14 after AND_gate_delay;
AND_gate_to_Register015_i <= RW AND RF_D15 after AND_gate_delay;
AND_gate_to_Register016_i <= RW AND RF_D16 after AND_gate_delay;
AND_gate_to_Register017_i <= RW AND RF_D17 after AND_gate_delay;
AND_gate_to_Register018_i <= RW AND RF_D18 after AND_gate_delay;
AND_gate_to_Register019_i <= RW AND RF_D19 after AND_gate_delay;
AND_gate_to_Register020_i <= RW AND RF_D20 after AND_gate_delay;
AND_gate_to_Register021_i <= RW AND RF_D21 after AND_gate_delay;
AND_gate_to_Register022_i <= RW AND RF_D22 after AND_gate_delay;
AND_gate_to_Register023_i <= RW AND RF_D23 after AND_gate_delay;
AND_gate_to_Register024_i <= RW AND RF_D24 after AND_gate_delay;
AND_gate_to_Register025_i <= RW AND RF_D25 after AND_gate_delay;
AND_gate_to_Register026_i <= RW AND RF_D26 after AND_gate_delay;
AND_gate_to_Register027_i <= RW AND RF_D27 after AND_gate_delay;
AND_gate_to_Register028_i <= RW AND RF_D28 after AND_gate_delay;
AND_gate_to_Register029_i <= RW AND RF_D29 after AND_gate_delay;
AND_gate_to_Register030_i <= RW AND RF_D30 after AND_gate_delay;
AND_gate_to_Register031_i <= RW AND RF_D31 after AND_gate_delay;

AND_gate_to_Register0_i <= Q00 AND AND_gate_to_Register00_i after AND_gate_delay;
AND_gate_to_Register1_i <= Q00 AND AND_gate_to_Register01_i after AND_gate_delay;
AND_gate_to_Register2_i <= Q00 AND AND_gate_to_Register02_i after AND_gate_delay;
AND_gate_to_Register3_i <= Q00 AND AND_gate_to_Register03_i after AND_gate_delay;
AND_gate_to_Register4_i <= Q00 AND AND_gate_to_Register04_i after AND_gate_delay;
AND_gate_to_Register5_i <= Q00 AND AND_gate_to_Register05_i after AND_gate_delay;
AND_gate_to_Register6_i <= Q00 AND AND_gate_to_Register06_i after AND_gate_delay;
AND_gate_to_Register7_i <= Q00 AND AND_gate_to_Register07_i after AND_gate_delay;
AND_gate_to_Register8_i <= Q00 AND AND_gate_to_Register08_i after AND_gate_delay;
AND_gate_to_Register9_i <= Q00 AND AND_gate_to_Register09_i after AND_gate_delay;
AND_gate_to_Register10_i <= Q00 AND AND_gate_to_Register010_i after AND_gate_delay;
AND_gate_to_Register11_i <= Q00 AND AND_gate_to_Register011_i after AND_gate_delay;
AND_gate_to_Register12_i <= Q00 AND AND_gate_to_Register012_i after AND_gate_delay;
AND_gate_to_Register13_i <= Q00 AND AND_gate_to_Register013_i after AND_gate_delay;
AND_gate_to_Register14_i <= Q00 AND AND_gate_to_Register014_i after AND_gate_delay;
AND_gate_to_Register15_i <= Q00 AND AND_gate_to_Register015_i after AND_gate_delay;
AND_gate_to_Register16_i <= Q00 AND AND_gate_to_Register016_i after AND_gate_delay;
AND_gate_to_Register17_i <= Q00 AND AND_gate_to_Register017_i after AND_gate_delay;
AND_gate_to_Register18_i <= Q00 AND AND_gate_to_Register018_i after AND_gate_delay;
AND_gate_to_Register19_i <= Q00 AND AND_gate_to_Register019_i after AND_gate_delay;
AND_gate_to_Register20_i <= Q00 AND AND_gate_to_Register020_i after AND_gate_delay;
AND_gate_to_Register21_i <= Q00 AND AND_gate_to_Register021_i after AND_gate_delay;
AND_gate_to_Register22_i <= Q00 AND AND_gate_to_Register022_i after AND_gate_delay;
AND_gate_to_Register23_i <= Q00 AND AND_gate_to_Register023_i after AND_gate_delay;
AND_gate_to_Register24_i <= Q00 AND AND_gate_to_Register024_i after AND_gate_delay;
AND_gate_to_Register25_i <= Q00 AND AND_gate_to_Register025_i after AND_gate_delay;
AND_gate_to_Register26_i <= Q00 AND AND_gate_to_Register026_i after AND_gate_delay;
AND_gate_to_Register27_i <= Q00 AND AND_gate_to_Register027_i after AND_gate_delay;
AND_gate_to_Register28_i <= Q00 AND AND_gate_to_Register028_i after AND_gate_delay;
AND_gate_to_Register29_i <= Q00 AND AND_gate_to_Register029_i after AND_gate_delay;
AND_gate_to_Register30_i <= Q00 AND AND_gate_to_Register030_i after AND_gate_delay;
AND_gate_to_Register31_i <= Q00 AND AND_gate_to_Register031_i after AND_gate_delay;


AND_gate_to_TempReg1_i <= RW AND Q01 after AND_gate_delay;
AND_gate_to_TempReg2_i <= RW AND Q02 after AND_gate_delay;
AND_gate_to_TempReg3_i <= RW AND Q03 after AND_gate_delay;
AND_gate_to_TempReg4_i <= RW AND Q04 after AND_gate_delay;
AND_gate_to_TempReg5_i <= RW AND Q05 after AND_gate_delay;
AND_gate_to_TempReg6_i <= RW AND Q06 after AND_gate_delay;
AND_gate_to_TempReg7_i <= RW AND Q07 after AND_gate_delay;
AND_gate_to_TempReg8_i <= RW AND Q08 after AND_gate_delay;
AND_gate_to_TempReg9_i <= RW AND Q09 after AND_gate_delay;
AND_gate_to_TempReg10_i <= RW AND Q10 after AND_gate_delay;
AND_gate_to_TempReg11_i <= RW AND Q11 after AND_gate_delay;
AND_gate_to_TempReg12_i <= RW AND Q12 after AND_gate_delay;
AND_gate_to_TempReg13_i <= RW AND Q13 after AND_gate_delay;
AND_gate_to_TempReg14_i <= RW AND Q14 after AND_gate_delay; 
AND_gate_to_TempReg15_i <= RW AND Q15 after AND_gate_delay;

Mux16_A: RF_Mux_16_32Bit_23373470
        Port map (I0 => ZA,
                  I1 => TQ01,
                  I2 => TQ02,
                  I3 => TQ03,
                  I4 => TQ04,
                  I5 => TQ05,
                  I6 => TQ06,
                  I7 => TQ07,
                  I8 => TQ08,
                  I9 => TQ09,
                  I10 => TQ10,
                  I11 => TQ11,
                  I12 => TQ12,
                  I13 => TQ13,
                  I14 => TQ14,
                  I15 => TQ15,
                  S => TB,
                  Y => B);
          
Mux16_B: RF_Mux_16_32Bit_23373470
        Port map (I0 => ZB,
                  I1 => TQ01,
                  I2 => TQ02,
                  I3 => TQ03,
                  I4 => TQ04,
                  I5 => TQ05,
                  I6 => TQ06,
                  I7 => TQ07,
                  I8 => TQ08,
                  I9 => TQ09,
                  I10 => TQ10,
                  I11 => TQ11,
                  I12 => TQ12,
                  I13 => TQ13,
                  I14 => TQ14,
                  I15 => TQ15,
                  S => TA,
                  Y => A);

Mux32_A: RF_Mux_32_32Bit_23373470
        Port map (I0 => VQ00,
                  I1 => VQ01,
                  I2 => VQ02,
                  I3 => VQ03,
                  I4 => VQ04,
                  I5 => VQ05,
                  I6 => VQ06,
                  I7 => VQ07,
                  I8 => VQ08,
                  I9 => VQ09,
                  I10 => VQ10,
                  I11 => VQ11,
                  I12 => VQ12,
                  I13 => VQ13,
                  I14 => VQ14,
                  I15 => VQ15,
                  I16 => VQ16,
                  I17 => VQ17,
                  I18 => VQ18,
                  I19 => VQ19,
                  I20 => VQ20,
                  I21 => VQ21,
                  I22 => VQ22,
                  I23 => VQ23,
                  I24 => VQ24,
                  I25 => VQ25,
                  I26 => VQ26,
                  I27 => VQ27,
                  I28 => VQ28,
                  I29 => VQ29,
                  I30 => VQ30,
                  I31 => VQ31,
                  S => SA,
                  Y => ZA);
                  
Mux32_B: RF_Mux_32_32Bit_23373470
        Port map (I0 => VQ00,
                  I1 => VQ01,
                  I2 => VQ02,
                  I3 => VQ03,
                  I4 => VQ04,
                  I5 => VQ05,
                  I6 => VQ06,
                  I7 => VQ07,
                  I8 => VQ08,
                  I9 => VQ09,
                  I10 => VQ10,
                  I11 => VQ11,
                  I12 => VQ12,
                  I13 => VQ13,
                  I14 => VQ14,
                  I15 => VQ15,
                  I16 => VQ16,
                  I17 => VQ17,
                  I18 => VQ18,
                  I19 => VQ19,
                  I20 => VQ20,
                  I21 => VQ21,
                  I22 => VQ22,
                  I23 => VQ23,
                  I24 => VQ24,
                  I25 => VQ25,
                  I26 => VQ26,
                  I27 => VQ27,
                  I28 => VQ28,
                  I29 => VQ29,
                  I30 => VQ30,
                  I31 => VQ31,
                  S => SB,
                  Y => ZB);
    

end Behaviourial;
