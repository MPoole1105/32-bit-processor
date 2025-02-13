
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 17.10.2024 16:41:51
-- Design Name: 
-- Module Name: RF_Test_RegisterFile_23373470 - Behavioral
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

entity RF_Test_RegisterFile_23373470 is

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

end RF_Test_RegisterFile_23373470;

architecture Behavioral of RF_Test_RegisterFile_23373470 is

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

component RF_Mux3_32Bit_23373470 is

Port(    I0 : in std_logic_vector (31 downto 0);
         I1 : in std_logic_vector (31 downto 0);
         I2 : in std_logic_vector (31 downto 0);
         S : in std_logic_vector (1 downto 0);
         Y : out std_logic_vector (31 downto 0)
         );
         
         
end component;

signal In0, In1, Z_T : std_logic_vector (31 downto 0);

begin

RegisterFile : RF_RegisterFile_32_15_2337340 Port Map 
(
    SA => SA_T,
    SB => SB_T,
    DR => DR_T,
    TA => TA_T,
    TB => TB_T,
    TD => TD_T,
    D => Z_T,
    A => In0,
    B => In1,
    CLK => CLK_T,
    RW => RW_T,
    Reset => Reset_T
);

Mux3_32Bit: RF_Mux3_32Bit_23373470
        Port map (I0 => In0,
                  I1 => In1,
                  I2 => D_T,
                  S => A_B_DataIn_Test,
                  Y => Z_T);

end Behavioral;
