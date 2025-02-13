----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 31.10.2024 02:19:38
-- Design Name: 
-- Module Name: DP_SingleBit_LogicCircuit_23373470 - Behavioral
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

entity DP_SingleBit_LogicCircuit_23373470 is
    Port ( A : in std_logic; 
           B : in std_logic;
           S0 : in std_logic;
           S1 : in std_logic;
           G : out std_logic);
end DP_SingleBit_LogicCircuit_23373470;

architecture Behavioral of DP_SingleBit_LogicCircuit_23373470 is

 constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
  constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 
  constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
  constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
  constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
  constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
  constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1

signal and1, and2, and3, and4, and5, and6, and7,and8,and9 : std_logic;
signal or1, or2, or3,or4 : std_logic;
signal Xor1 : std_logic;
signal notS0, notS1, notA: std_logic;

begin

notS0 <= not S0 after NOT_Gate_delay;
notS1 <= not s1 after NOT_Gate_delay;
notA <= not a after NOT_Gate_delay;

and1 <= A AND B after AND_Gate_delay;
or1  <= A OR B after OR_Gate_delay;
and2 <= and1 AND notS0 after AND_Gate_delay;
and3 <= or1 AND S0 after AND_Gate_delay;
Xor1 <= A XOR B after XOR_Gate_delay;
and4 <= and2 AND notS1 after AND_Gate_delay;
and5 <= and3 AND notS1 after AND_Gate_delay;
and6 <= notS0 AND Xor1 after AND_Gate_delay;
or2  <= and4 OR and5 after OR_Gate_delay;
and7 <= and6 AND S1 after AND_Gate_delay;
and8 <= notA AND S0 after AND_Gate_delay;
or3  <= or2 OR and7 after OR_Gate_delay;
and9 <= and8 AND S1 after AND_Gate_delay;
G <= or3 OR and9 after OR_Gate_delay;

end Behavioral;
