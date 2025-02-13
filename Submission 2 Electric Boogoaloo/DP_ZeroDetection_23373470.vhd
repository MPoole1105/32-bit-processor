----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2024 02:24:00
-- Design Name: 
-- Module Name: DP_ZeroDetection_23373470 - Behavioral
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

entity DP_ZeroDetection_23373470 is
       Port (A : in std_logic_vector (31 downto 0);
             Y : out std_logic );
end DP_ZeroDetection_23373470;

architecture Behavioral of DP_ZeroDetection_23373470 is

signal or0, or1, or2, or3, or4, or5, or6, or7, or8, or9, or10, or11, or12, or13, or14, or15, or16, or17, or18, or19, or20, or21, or22, or23, or24, or25, or26, or27, or28, or29, or30,or31 : std_logic;

  constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
   constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 1
   constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
   constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   
begin

or0 <= A(0) or A(1) after OR_Gate_Delay;
or1 <= A(2) or A(3) after OR_Gate_Delay;
or2 <= A(4) or A(5) after OR_Gate_Delay;
or3 <= A(6) or A(7) after OR_Gate_Delay;
or4 <= A(8) or A(9) after OR_Gate_Delay;
or5 <= A(10) or A(11) after OR_Gate_Delay;
or6 <= A(12) or A(13) after OR_Gate_Delay;
or7 <= A(14) or A(15) after OR_Gate_Delay;
or8 <= A(16) or A(17) after OR_Gate_Delay;
or9 <= A(18) or A(19) after OR_Gate_Delay;
or10 <= A(20) or A(21) after OR_Gate_Delay;
or11 <= A(22) or A(23) after OR_Gate_Delay;
or12 <= A(24) or A(25) after OR_Gate_Delay;
or13 <= A(26) or A(27) after OR_Gate_Delay;
or14 <= A(28) or A(29) after OR_Gate_Delay;
or15 <= A(30) or A(31) after OR_Gate_Delay;

or16 <= or0 OR or1 after OR_Gate_Delay;
or17 <= or2 OR or3 after OR_Gate_Delay;
or18 <= or4 OR or5 after OR_Gate_Delay;
or19 <= or6 OR or7 after OR_Gate_Delay;
or20 <= or8 OR or9 after OR_Gate_Delay;
or21 <= or10 OR or11 after OR_Gate_Delay;
or22 <= or12 OR or13 after OR_Gate_Delay;
or23 <= or14 OR or15 after OR_Gate_Delay;

or24 <= or16 OR or17 after OR_Gate_Delay;
or25 <= or18 OR or19 after OR_Gate_Delay;
or26 <= or20 OR or21 after OR_Gate_Delay;
or27 <= or22 OR or23 after OR_Gate_Delay;

or28 <= or24 OR or25 after OR_Gate_Delay;
or29 <= or26 OR or27 after OR_Gate_Delay;

or30 <= or28 OR or29 after OR_Gate_Delay;

Y <= not or30 after NOT_Gate_Delay;

end Behavioral;
