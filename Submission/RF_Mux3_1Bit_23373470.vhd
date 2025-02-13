----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 11.10.2024 21:15:54
-- Design Name: 
-- Module Name: RF_Mux3_1Bit_23373470 - Behavioral
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

entity RF_Mux3_1Bit_23373470 is

    Port(I0 : in std_logic;
         I1 : in std_logic;
         I2 : in std_logic;
         S : in std_logic_vector (1 downto 0);
         Y : out std_logic );
         
end RF_Mux3_1Bit_23373470;

   

architecture Behavioral of RF_Mux3_1Bit_23373470 is

   signal and0, and1 , and2, and10, and11, and12 , S0_not, S1_not , or0, not_S11: std_logic;

   constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
   constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 1
   constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
   constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   
    

begin

   S0_not <= NOT S(0) after NOT_gate_delay;
   S1_not <= NOT S(1) after NOT_gate_delay;
    
   and0 <= S1_not AND S0_not after AND_gate_delay;
   and1 <= S1_not AND S(0) after AND_gate_delay;
   and2 <= S0_not AND S(1) after AND_gate_delay;
   and10 <= I0 AND and0 after AND_gate_delay;
   and11 <= I1 AND and1 after AND_gate_delay;
   and12 <= I2 AND and2 after AND_gate_delay;
      
   or0 <= and10 OR and11 after OR_gate_delay;
  
   
   Y <= or0 OR and12 after OR_gate_Delay;
   

end Behavioral;
