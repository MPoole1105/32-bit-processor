----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 16.12.2024 18:27:43
-- Design Name: 
-- Module Name: CPU_PC_23373470 - Behavioral
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

entity CPU_PC_23373470 is
    Port ( Clock : in std_logic;
           PL : in std_logic;
           Reset : in std_logic; 
           Displacement : in std_logic_vector(31 downto 0);
           PI : in std_logic;
           InstADD : out std_logic_vector(31 downto 0));
end CPU_PC_23373470;

architecture Behavioral of CPU_PC_23373470 is
    component CPU_Mux2_32Bit_23373470 is
    Port ( I0 : in std_logic_vector (31 downto 0);
           I1 : in std_logic_vector (31 downto 0); 
           S  : in std_logic;
           Y  : out std_logic_vector (31 downto 0) );
    end component;
    
    component DP_RippleCarryAddder32Bit_23373470 is
    Port ( A_R : in std_logic_vector (31 downto 0);
           B_R : in std_logic_vector (31 downto 0);
           Cin_R : in std_logic;
           S_R : out std_logic_vector (31 downto 0);
           Cout : out std_logic;
           V : out std_logic  );
    end component;
    
    component RF_Register_23373470 is
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
           Load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0));      
    end component;


 constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
   constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 1
   constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
   constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1


    Signal Y, Sum, ResetMuxOut, RippleSum, RegisterOut: std_logic_vector(31 downto 0);
    signal PL_reset, PL_reset_PI : std_logic; 
    
begin


PL_PI_Mux : CPU_Mux2_32Bit_23373470 Port map
(
    I0  => Displacement,
    I1  => x"00000001",
    S  => PI,
    Y  => Y
);


ResetMux : CPU_Mux2_32Bit_23373470 Port map
(
    I0  => Sum,
    I1  => x"00000002",
    S  => Reset,
    Y  => ResetMuxOut
);
Adder : DP_RippleCarryAddder32Bit_23373470 PORT map

(   A_R => RegisterOut,
    B_R => Y,
    Cin_R => '0',
    S_R => Sum
);

PC: RF_Register_23373470 port map (
      D => ResetMuxOut,
      Load => PL_Reset_PI,
      CLK => Clock,
      Reset => '0',
      Q => RegisterOut
    );

PL_Reset <= PL OR Reset after OR_GATE_DELAY;
PL_Reset_PI <= Pl_Reset OR PI after OR_GATE_DELAY;
Instadd <= RegisterOut;
 
end Behavioral;
