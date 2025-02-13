----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 31.10.2024 02:23:14
-- Design Name: 
-- Module Name: DP_CFlagMux2_1Bit_23373470 - Behavioral
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

entity DP_CFlagMux2_1Bit_23373470 is
    Port ( F4 : in std_logic;
           C_A : in std_logic;
           C_Shift : in std_logic;
           C : out std_logic  );
end DP_CFlagMux2_1Bit_23373470;

architecture Behavioral of DP_CFlagMux2_1Bit_23373470 is

   signal and1 , and2, not_f4 : std_logic;
   
   constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
   constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 1
   constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
   constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   
begin
    
    not_f4 <= not f4 after NOT_Gate_Delay; 
    and1 <= C_A AND not_F4 after AND_Gate_Delay; 
    and2 <= C_Shift AND F4 after AND_Gate_Delay; 
    C <= and1 OR and2 after OR_gate_delay;


end Behavioral;
