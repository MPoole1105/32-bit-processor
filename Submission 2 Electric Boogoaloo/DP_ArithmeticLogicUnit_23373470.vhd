----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2024 02:21:14
-- Design Name: 
-- Module Name: DP_ArithmeticLogicUnit_23373470 - Behavioral
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

entity DP_ArithmeticLogicUnit_23373470 is
    Port ( A : in std_logic_vector (31 downto 0);
           C_In : in std_logic;
           B : in std_logic_vector (31 downto 0);
           S0 : in std_logic;
           S1 : in std_logic;
           S2 : in std_logic;
           C : out std_logic;
           V : out std_logic;
           g : out std_logic_vector (31 downto 0)
           );
end DP_ArithmeticLogicUnit_23373470;

architecture Behavioral of DP_ArithmeticLogicUnit_23373470 is

component DP_32Bit_B_Logic_23373470 is
   Port (B  : in std_logic_vector (31 downto 0);
          S0 : in std_logic;
          S1 : in std_logic;
          Y  : out std_logic_vector (31 downto 0)
          );             
end component;

component DP_32Bit_LogicCircuit_23373470 is
    Port ( A : in std_logic_vector (31 downto 0); 
           B : in std_logic_vector (31 downto 0);
           S0 : in std_logic;
           S1 : in std_logic;
           G : out std_logic_vector (31 downto 0) );
end component;

component DP_RippleCarryAddder32Bit_23373470 is
    Port ( A_R : in std_logic_vector (31 downto 0);
           B_R : in std_logic_vector (31 downto 0);
           Cin_R : in std_logic;
           S_R : out std_logic_vector (31 downto 0);
           Cout : out std_logic;
           V : out std_logic  );
           
end component;

component CPU_Mux2_32Bit_23373470 is
    Port ( I0 : in std_logic_vector (31 downto 0);
           I1 : in std_logic_vector (31 downto 0); 
           S  : in std_logic;
           Y  : out std_logic_vector (31 downto 0)
            );
end component;

signal Y, Sum, Z, B_out: std_logic_vector (31 downto 0);
begin


BLogic : DP_32Bit_B_Logic_23373470 Port Map 
( 
          B  => B,
          S0 => S0,
          S1 => S1,
          Y  => b_out
);

Adder : DP_RippleCarryAddder32Bit_23373470 Port Map
         ( A_R => A,
           B_R => B_out,
           Cin_R => C_in,
           S_R  => Sum,
           Cout => C,
           V  => V
);

LogicCircuit : DP_32Bit_LogicCircuit_23373470 Port map
(
           A => A,
           B => B,
           S0 => S0,
           S1 => S1,
           G => Z
);

Mux : CPU_Mux2_32Bit_23373470 Port Map
         ( I0 => Sum,
           I1 => Z,
           S  => S2,
           Y  => G
            );
end Behavioral;
