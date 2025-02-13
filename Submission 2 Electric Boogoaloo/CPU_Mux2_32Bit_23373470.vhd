----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2024 00:02:50
-- Design Name: 
-- Module Name: CPU_Mux2_32Bit_23373470 - Behavioral
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

entity CPU_Mux2_32Bit_23373470 is
    Port ( I0 : in std_logic_vector (31 downto 0);
           I1 : in std_logic_vector (31 downto 0); 
           S  : in std_logic;
           Y  : out std_logic_vector (31 downto 0) );
end CPU_Mux2_32Bit_23373470;

architecture Behavioral of CPU_Mux2_32Bit_23373470 is

signal And0_0, And1_0, And2_0, And3_0, And4_0, And5_0, And6_0, And7_0, And8_0, And9_0, And10_0, And11_0, And12_0, And13_0, And14_0,And15_0, And16_0, And17_0, And18_0, And19_0, And20_0, And21_0, And22_0, And23_0, And24_0, And25_0, And26_0, And27_0, And28_0, And29_0, And30_0, And31_0 :  std_logic; 
signal And0_1, And1_1, And2_1, And3_1, And4_1, And5_1, And6_1, And7_1, And8_1, And9_1, And10_1, And11_1, And12_1, And13_1, And14_1,And15_1, And16_1, And17_1, And18_1, And19_1, And20_1, And21_1, And22_1, And23_1, And24_1, And25_1, And26_1, And27_1, And28_1, And29_1, And30_1, And31_1 :  std_logic;     
signal Or0, Or1, Or2, Or3, Or4, Or5, Or6, Or7, Or8, Or9, Or10, Or11, Or12, Or13, Or14,Or15, Or16, Or17, Or18, Or19, Or20, Or21, Or22, Or23, Or24, Or25, Or26, Or27, Or28, Or29, Or30, Or31 :  std_logic;     
signal notS : std_logic; 
  constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
  constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 
  constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
  constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
  constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
  constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
  constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1

begin

notS <= not s after Not_Gate_delay;

And0_0 <= I0(0) AND notS after AND_Gate_Delay;
And1_0 <= I0(1) AND notS after AND_Gate_Delay;
And2_0 <= I0(2) AND notS after AND_Gate_Delay;
And3_0 <= I0(3) AND notS after AND_Gate_Delay;
And4_0 <= I0(4) AND notS after AND_Gate_Delay;
And5_0 <= I0(5) AND notS after AND_Gate_Delay;
And6_0 <= I0(6) AND notS after AND_Gate_Delay;
And7_0 <= I0(7) AND notS after AND_Gate_Delay;
And8_0 <= I0(8) AND notS after AND_Gate_Delay;
And9_0 <= I0(9) AND notS after AND_Gate_Delay;
And10_0 <= I0(10) AND notS after AND_Gate_Delay;
And11_0 <= I0(11) AND notS after AND_Gate_Delay;
And12_0 <= I0(12) AND notS after AND_Gate_Delay;
And13_0 <= I0(13) AND notS after AND_Gate_Delay;
And14_0 <= I0(14) AND notS after AND_Gate_Delay;
And15_0 <= I0(15) AND notS after AND_Gate_Delay;
And16_0 <= I0(16) AND notS after AND_Gate_Delay;
And17_0 <= I0(17) AND notS after AND_Gate_Delay;
And18_0 <= I0(18) AND notS after AND_Gate_Delay;
And19_0 <= I0(19) AND notS after AND_Gate_Delay;
And20_0 <= I0(20) AND notS after AND_Gate_Delay;
And21_0 <= I0(21) AND notS after AND_Gate_Delay;
And22_0 <= I0(22) AND notS after AND_Gate_Delay;
And23_0 <= I0(23) AND notS after AND_Gate_Delay;
And24_0 <= I0(24) AND notS after AND_Gate_Delay;
And25_0 <= I0(25) AND notS after AND_Gate_Delay;
And26_0 <= I0(26) AND notS after AND_Gate_Delay;
And27_0 <= I0(27) AND notS after AND_Gate_Delay;
And28_0 <= I0(28) AND notS after AND_Gate_Delay;
And29_0 <= I0(29) AND notS after AND_Gate_Delay;
And30_0 <= I0(30) AND notS after AND_Gate_Delay;
And31_0 <= I0(31) AND notS after AND_Gate_Delay;

And0_1 <= I1(0) AND S after AND_Gate_Delay;
And1_1 <= I1(1) AND S after AND_Gate_Delay;
And2_1 <= I1(2) AND S after AND_Gate_Delay;
And3_1 <= I1(3) AND S after AND_Gate_Delay;
And4_1 <= I1(4) AND S after AND_Gate_Delay;
And5_1 <= I1(5) AND S after AND_Gate_Delay;
And6_1 <= I1(6) AND S after AND_Gate_Delay;
And7_1 <= I1(7) AND S after AND_Gate_Delay;
And8_1 <= I1(8) AND S after AND_Gate_Delay;
And9_1 <= I1(9) AND S after AND_Gate_Delay;
And10_1 <= I1(10) AND S after AND_Gate_Delay;
And11_1 <= I1(11) AND S after AND_Gate_Delay;
And12_1 <= I1(12) AND S after AND_Gate_Delay;
And13_1 <= I1(13) AND S after AND_Gate_Delay;
And14_1 <= I1(14) AND S after AND_Gate_Delay;
And15_1 <= I1(15) AND S after AND_Gate_Delay;
And16_1 <= I1(16) AND S after AND_Gate_Delay;
And17_1 <= I1(17) AND S after AND_Gate_Delay;
And18_1 <= I1(18) AND S after AND_Gate_Delay;
And19_1 <= I1(19) AND S after AND_Gate_Delay;
And20_1 <= I1(20) AND S after AND_Gate_Delay;
And21_1 <= I1(21) AND S after AND_Gate_Delay;
And22_1 <= I1(22) AND S after AND_Gate_Delay;
And23_1 <= I1(23) AND S after AND_Gate_Delay;
And24_1 <= I1(24) AND S after AND_Gate_Delay;
And25_1 <= I1(25) AND S after AND_Gate_Delay;
And26_1 <= I1(26) AND S after AND_Gate_Delay;
And27_1 <= I1(27) AND S after AND_Gate_Delay;
And28_1 <= I1(28) AND S after AND_Gate_Delay;
And29_1 <= I1(29) AND S after AND_Gate_Delay;
And30_1 <= I1(30) AND S after AND_Gate_Delay;
And31_1 <= I1(31) AND S after AND_Gate_Delay;

Y(0) <= And0_1 or And0_0 after OR_gate_Delay;
Y(1) <= And1_1 or And1_0 after OR_gate_Delay;
Y(2) <= And2_1 or And2_0 after OR_gate_Delay;
Y(3) <= And3_1 or And3_0 after OR_gate_Delay;
Y(4) <= And4_1 or And4_0 after OR_gate_Delay;
Y(5) <= And5_1 or And5_0 after OR_gate_Delay;
Y(6) <= And6_1 or And6_0 after OR_gate_Delay;
Y(7) <= And7_1 or And7_0 after OR_gate_Delay;
Y(8) <= And8_1 or And8_0 after OR_gate_Delay;
Y(9) <= And9_1 or And9_0 after OR_gate_Delay;
Y(10) <= And10_1 or And10_0 after OR_gate_Delay;
Y(11) <= And11_1 or And11_0 after OR_gate_Delay;
Y(12) <= And12_1 or And12_0 after OR_gate_Delay;
Y(13) <= And13_1 or And13_0 after OR_gate_Delay;
Y(14) <= And14_1 or And14_0 after OR_gate_Delay;
Y(15) <= And15_1 or And15_0 after OR_gate_Delay;
Y(16) <= And16_1 or And16_0 after OR_gate_Delay;
Y(17) <= And17_1 or And17_0 after OR_gate_Delay;
Y(18) <= And18_1 or And18_0 after OR_gate_Delay;
Y(19) <= And19_1 or And19_0 after OR_gate_Delay;
Y(20) <= And20_1 or And20_0 after OR_gate_Delay;
Y(21) <= And21_1 or And21_0 after OR_gate_Delay;
Y(22) <= And22_1 or And22_0 after OR_gate_Delay;
Y(23) <= And23_1 or And23_0 after OR_gate_Delay;
Y(24) <= And24_1 or And24_0 after OR_gate_Delay;
Y(25) <= And25_1 or And25_0 after OR_gate_Delay;
Y(26) <= And26_1 or And26_0 after OR_gate_Delay;
Y(27) <= And27_1 or And27_0 after OR_gate_Delay;
Y(28) <= And28_1 or And28_0 after OR_gate_Delay;
Y(29) <= And29_1 or And29_0 after OR_gate_Delay;
Y(30) <= And30_1 or And30_0 after OR_gate_Delay;
Y(31) <= And31_1 or And31_0 after OR_gate_Delay;

end Behavioral;
