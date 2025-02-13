----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 06.11.2024 17:12:23
-- Design Name: 
-- Module Name: DP_DataPath_23373470 - Behavioral
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


entity DP_DataPath_23373470 is
    Port ( 
           IR_IN : in std_logic_vector (31 downto 0);
           MB : in std_logic ;
           Data_IN : in std_logic_vector (31 downto 0);
           MD : in std_logic;
           FS : in std_logic_vector (4 downto 0);
           CLK : in std_logic ;
           DR : in std_logic_vector (4 downto 0);
           RW : in std_logic;
           Reset : in std_logic;
           SA : in std_logic_vector (4 downto 0);
           SB : in std_logic_vector (4 downto 0);
           TA : in std_logic_vector (3 downto 0);
           TB : in std_logic_vector (3 downto 0);
           TD : in std_logic_vector (3 downto 0);
           Data_out : out std_logic_vector (31 downto 0);
           C : out std_logic;
           N : out std_logic;
           V : out std_logic;
           Z : out std_logic;
           ADD : out std_logic_vector (31 downto 0)
    );
    
    
    
end DP_DataPath_23373470;

architecture Behavioral of DP_DataPath_23373470 is

component CPU_Mux2_32Bit_23373470 is
    Port ( I0 : in std_logic_vector (31 downto 0);
           I1 : in std_logic_vector (31 downto 0); 
           S  : in std_logic;
           Y  : out std_logic_vector (31 downto 0) );
end component;

component DP_FunctionalUnit_23373470 is
    Port ( 
           A : in std_logic_vector (31 downto 0);
           B : in std_logic_vector (31 downto 0); 
           FS : in std_logic_vector (4 downto 0);
           F : out std_logic_vector (31 downto 0);
           N : out std_logic;
           C : out std_logic;
           Z : out std_logic;
           V : out std_logic
           );
           
end component;

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

signal I0_b, i1_b, y_b, I0_d, i1_d, y_d : std_logic_vector (31 downto 0);
signal S_b, S_d : std_logic;

signal A_F, B_F, F_F : std_logic_vector (31 downto 0);
signal FS_F : std_logic_vector (4 downto 0); 
signal N_F, V_F, C_F, Z_F : std_logic;

Signal SA_R, SB_R, DR_R : std_logic_vector (4 downto 0);
Signal TA_R, TB_R, TD_R : std_logic_vector (3 downto 0) := (others => '0');
Signal D_R, A_R, B_R : std_logic_vector (31 downto 0);
Signal RW_R : std_logic := '1';
Signal CLK_R : std_logic := '0';
Signal Reset_R : std_logic := '1';


begin

MuxB : CPU_Mux2_32Bit_23373470 Port map
(
    I0  => B_R,
    I1  => IR_in(31 downto 0),
    S  => MB,
    Y  => Y_B
);

MuxD : CPU_Mux2_32Bit_23373470 Port map
(
    I0  => F_F,
    I1  => DATA_In,
    S  => MD,
    Y  => Y_d
);


FunctionalUnit : DP_FunctionalUnit_23373470 Port Map 
(
    A => A_R,
    B => Y_B,
    FS => FS,
    F => F_F,
    N => N,
    Z => Z,
    V => V,
    C => C
);

RegisterFile : RF_RegisterFile_32_15_2337340 Port Map 
(
    SA => SA,
    SB => SB,
    DR => DR,
    TA => TA,
    TB => TB,
    TD => TD,
    D => Y_D,
    A => A_R,
    B => B_R,
    CLK => CLK,
    RW => RW,
    Reset => Reset
);

ADD <= A_R; 
Data_out <= y_B;
end Behavioral;
