----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 31.10.2024 02:17:44
-- Design Name: 
-- Module Name: DP_SingleBit_B_Logic_23373470 - Behavioral
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

entity DP_SingleBit_B_Logic_23373470 is
    Port (B  : in std_logic;
          S0 : in std_logic;
          S1 : in std_logic;
          Y  : out std_logic
          );                                        
end DP_SingleBit_B_Logic_23373470;

architecture Behavioral of DP_SingleBit_B_Logic_23373470 is


signal BS0_And, NotBS1_And, Y_i , notB : std_logic;
 constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
  constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 
  constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
  constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
  constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
  constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
  constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1

begin

notB  <= not B after Not_gate_delay;

BS0_And <= B AND S0 after AND_gate_delay;
NotBS1_And <= notB AND S1 after AND_Gate_Delay;
Y <= BS0_And OR NotBS1_And after OR_gate_Delay;

end Behavioral;
