----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 18.12.2024 21:32:52
-- Design Name: 
-- Module Name: CPU_ControlMemory_23373470_TB - Simulation
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
use IEEE.NUMERIC_STD.ALL;  -- Include this for to_unsigned and other numeric functions

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_ControlMemory_23373470_TB is
--  Port ( );
end CPU_ControlMemory_23373470_TB;

architecture Simulation of CPU_ControlMemory_23373470_TB is

component CPU_ControlMemory_23373470 is
    Port( Address_Input: in std_logic_vector(16 downto 0); 
         NA : out std_logic_vector(16 downto 0);  
         MS : out std_logic_vector(2 downto 0);   
         MC : out std_logic;
         IL : out std_logic; 
         PI : out std_logic;
         PL : out std_logic;
         MB : out std_logic; 
         MD : out std_logic; 
         RW : out std_logic; 
         MM : out std_logic; 
         MW : out std_logic; 
         RV : out std_logic; 
         RC : out std_logic; 
         RN : out std_logic; 
         RZ : out std_logic; 
         FL : out std_logic; 
         FS : out std_logic_vector(4 downto 0);    
         TA : out std_logic_vector(3 downto 0); 
         TB : out std_logic_vector(3 downto 0);
         TD : out std_logic_vector(3 downto 0) 
         );
end component;

  signal  Address_Input_TB : std_logic_vector (16 downto 0);
  signal  NA_TB : std_logic_vector (16 downto 0);
  signal  MS_TB : std_logic_vector (2 downto 0);
  signal  MC_TB, IL_TB, PI_TB, PL_TB, MB_TB, MD_TB, RW_TB, MM_TB, MW_TB, RV_TB, RC_TB, RN_TB, RZ_TB, FL_TB :  std_logic;
  signal  FS_TB : std_logic_vector(4 downto 0);
  signal  TA_TB, TB_TB, TD_TB : std_logic_vector(3 downto 0);
    
begin

uut: CPU_ControlMemory_23373470 Port map (
            Address_Input => Address_Input_TB,
            NA => NA_TB,
            MS => MS_TB,
            MC => MC_TB,
            IL => IL_TB,
            PI => PI_TB,
            PL => PL_TB,
            MB => MB_TB,
            MD => MD_TB,
            RW => RW_TB,
            MM => MM_TB,
            MW => MW_TB,
            RV => RV_TB,
            RC => RC_TB,
            RN => RN_TB,
            RZ => RZ_TB,
            FL => FL_TB,
            FS => FS_TB,
            TA => TA_TB,
            TB => TB_TB,
            TD => TD_TB
        );

    
    stimulus: process
    begin
    
         for i in 0 to 56 loop
        Address_Input_TB <= std_logic_vector(to_unsigned(i, 17));
        wait for 50ns;
        end loop;
        for i in 57 to 127 loop
        Address_Input_TB <= std_logic_vector(to_unsigned(i, 17));
        wait for 50ns;
        end loop;
        

        -- End simulation
        wait;
    end process;

end Simulation;
