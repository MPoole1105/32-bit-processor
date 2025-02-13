----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2024 13:41:58
-- Design Name: 
-- Module Name: DP_ShifterCFlagMux2_1Bit_23373470 - Behavioral
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

entity DP_ShifterCFlagMux2_1Bit_23373470 is
   Port ( LSB : in std_logic;
          S0 : in std_logic;
          MSB : in std_logic;
          S1 : in std_logic; 
          Y  : out std_logic);
end DP_ShifterCFlagMux2_1Bit_23373470;

architecture Behavioral of DP_ShifterCFlagMux2_1Bit_23373470 is

signal and1 , and2 : std_logic;

   constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
   constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 1
   constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
   constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   
begin
    
    and1 <= LSB AND S0 after AND_Gate_Delay;
    and2 <= MSB AND S1 after AND_Gate_Delay; 
    Y <= and1 OR and2 after OR_gate_delay;

end Behavioral;
