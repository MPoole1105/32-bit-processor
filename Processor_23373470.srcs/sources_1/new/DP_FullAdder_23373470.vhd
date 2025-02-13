----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 31.10.2024 02:15:39
-- Design Name: 
-- Module Name: DP_FullAdder_23373470 - Behavioral
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

entity DP_FullAdder_23373470 is
    Port ( A : in std_logic;
           B : in std_logic;
           Cin : in std_logic;
           S : out std_logic;
           Cout : out std_logic);
           
end DP_FullAdder_23373470;

architecture Behavioral of DP_FullAdder_23373470 is

signal Xor1, Xor2, and1,and2  : std_logic;

  constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
  constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 
  constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
  constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
  constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
  constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
  constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1

begin

    Xor1 <= A xor B after XOR_Gate_Delay;
    and1 <= A AND B after AND_Gate_Delay;
    S <= Xor1 XOR Cin after XOR_Gate_Delay;
    and2 <= Xor1 AND Cin after AND_Gate_Delay;
    Cout <= and1 OR and2 after OR_Gate_Delay;
    

end Behavioral;
