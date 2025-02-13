----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 18.12.2024 20:57:51
-- Design Name: 
-- Module Name: CPU_DFlipFlop_23373470 - Simulation
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

entity CPU_DFlipFlop_23373470 is
    Port ( CLK: in STD_LOGIC;
           D: in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q : out STD_LOGIC);
end CPU_DFlipFlop_23373470;

architecture Simulation of CPU_DFlipFlop_23373470 is

   constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
   constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 1
   constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
   constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   
   signal Q_t, Q_not_t, Reset_not, X, K, S, R, L, Y, Z, M : std_logic;
begin


Reset_not <= not Reset after NOT_gate_delay;

X <= Y nand S after NAND_gate_delay;
K <= X and CLK after AND_gate_delay;
S <= K nand Reset_not after NAND_gate_delay;
Z <= S and CLK after AND_gate_delay;
R <= Z nand Y after NAND_gate_delay;
L <= R and D after AND_gate_delay;
Y <= L nand Reset_not after NAND_gate_delay;
Q_t <= S nand Q_not_t after NAND_gate_delay;
M <= R and Q_t after AND_gate_delay;
Q_not_t <= M nand Reset_not after NAND_gate_delay;
Q <= Q_t;

end Simulation;
