
-- Company: 
-- Engineer: Matthew Poole 
-- 
-- Create Date: 14.10.2024 15:21:15
-- Design Name: 
-- Module Name: RF_Mux_32_1Bit_23373470 - Behavioral
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

entity RF_Mux_32_1Bit_23373470 is
    Port(I0 : in std_logic;
         I1 : in std_logic;
         I2 : in std_logic;
         I3 : in std_logic;
         I4 : in std_logic;
         I5 : in std_logic;
         I6 : in std_logic;
         I7 : in std_logic;
         I8 : in std_logic;
         I9 : in std_logic;
         I10 : in std_logic;
         I11 : in std_logic;
         I12 : in std_logic;
         I13 : in std_logic;
         I14 : in std_logic;
         I15 : in std_logic;
         I16 : in std_logic;
         I17 : in std_logic;
         I18 : in std_logic;
         I19 : in std_logic;
         I20 : in std_logic;
         I21 : in std_logic;
         I22 : in std_logic;
         I23 : in std_logic;
         I24 : in std_logic;
         I25 : in std_logic;
         I26 : in std_logic;
         I27 : in std_logic;
         I28 : in std_logic;
         I29 : in std_logic;
         I30 : in std_logic;
         I31 : in std_logic;         
         S : in std_logic_vector (4 downto 0);
         Y : out std_logic );
         
end RF_Mux_32_1Bit_23373470;

architecture Behavioral of RF_Mux_32_1Bit_23373470 is
    signal and00, and01 , and10, and11, and000, and001, and010, and011, and100, and101, and110, and111 , and0000, and0001, and0010, and0011, and0100, and0101, and0110, and0111, and1000, and1001, and1010, and1011, and1100, and1101, and1110, and1111, S0_not, S1_not , S2_not, S3_not, S4_not: std_logic;
    signal and00000, and00001, and00010,and00011,and00100,and00101,and00110,and00111,and01000,and01001,and01010,and01011,and01100,and01101,and01110,and01111,and10000,and10001,and10010,and10011,and10100,and10101,and10110,and10111,and11000,and11001,and11010,and11011,and11100,and11101,and11110,and11111 : std_logic;
      signal and00000_i, and00001_i, and00010_i,and00011_i,and00100_i,and00101_i,and00110_i,and00111_i,and01000_i,and01001_i,and01010_i,and01011_i,and01100_i,and01101_i,and01110_i,and01111_i,and10000_i,and10001_i,and10010_i,and10011_i,and10100_i,and10101_i,and10110_i,and10111_i,and11000_i,and11001_i,and11010_i,and11011_i,and11100_i,and11101_i,and11110_i,and11111_i : std_logic;
    signal or01, or02 , or03, or04, or05, or06, or07, or08, or09 ,or010, or011, or012 , or013, or014, or015, or016, or11, or12 , or13, or14, or15, or16, or17, or18, or21, or22, or23, or24, or31, or32: std_logic;
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
   S2_not <= NOT S(2) after NOT_gate_delay;
   S3_not <= NOT S(3) after NOT_gate_delay;
   S4_not <= NOT S(4) after NOT_gate_delay;

   and00 <= S1_not AND S0_not after AND_gate_delay;
   and01 <= S1_not AND S(0) after AND_gate_delay;
   and10 <= S(1) AND S0_not after AND_gate_delay;
   and11 <= S(1) AND S(0) after AND_gate_delay;
  
   and000 <= S2_not AND and00 after AND_gate_delay;
   and001 <= S2_not AND and01 after AND_gate_delay;
   and010 <= S2_not AND and10 after AND_gate_delay;
   and011 <= S2_not AND and11 after AND_gate_delay;
   and100 <= S(2) AND and00 after AND_gate_delay;
   and101 <= S(2) AND and01 after AND_gate_delay;
   and110 <= S(2) AND and10 after AND_gate_delay;
   and111 <= S(2) AND and11 after AND_gate_delay;
   
   and0000 <= S3_not AND and000 after AND_gate_delay;
   and0001 <= S3_not AND and001 after AND_gate_delay;
   and0010 <= S3_not AND and010 after AND_gate_delay;
   and0011 <= S3_not AND and011 after AND_gate_delay;
   and0100 <= S3_not AND and100 after AND_gate_delay;
   and0101 <= S3_not AND and101 after AND_gate_delay;
   and0110 <= S3_not AND and110 after AND_gate_delay;
   and0111 <= S3_not AND and111 after AND_gate_delay;
   and1000 <= S(3) AND and000 after AND_gate_delay; 
   and1001 <= S(3) AND and001 after AND_gate_delay;
   and1010 <= S(3) AND and010 after AND_gate_delay;
   and1011 <= S(3) AND and011 after AND_gate_delay;
   and1100 <= S(3) AND and100 after AND_gate_delay;
   and1101 <= S(3) AND and101 after AND_gate_delay;
   and1110 <= S(3) AND and110 after AND_gate_delay;
   and1111 <= S(3) AND and111 after AND_gate_delay;
  
   and00000 <= S4_not AND and0000 after AND_gate_delay;
   and00001 <= S4_not AND and0001 after AND_gate_delay;
   and00010 <= S4_not AND and0010 after AND_gate_delay;
   and00011 <= S4_not AND and0011 after AND_gate_delay;
   and00100 <= S4_not AND and0100 after AND_gate_delay;
   and00101 <= S4_not AND and0101 after AND_gate_delay;
   and00110 <= S4_not AND and0110 after AND_gate_delay;
   and00111 <= S4_not AND and0111 after AND_gate_delay;
   and01000 <= S4_not AND and1000 after AND_gate_delay;
   and01001 <= S4_not AND and1001 after AND_gate_delay;
   and01010 <= S4_not AND and1010 after AND_gate_delay;
   and01011 <= S4_not AND and1011 after AND_gate_delay;
   and01100 <= S4_not AND and1100 after AND_gate_delay;
   and01101 <= S4_not AND and1101 after AND_gate_delay;
   and01110 <= S4_not AND and1110 after AND_gate_delay;
   and01111 <= S4_not AND and1111 after AND_gate_delay;
   and10000 <= S(4) AND and0000 after AND_gate_delay; 
   and10001 <= S(4) AND and0001 after AND_gate_delay;
   and10010 <= S(4) AND and0010 after AND_gate_delay;
   and10011 <= S(4) AND and0011 after AND_gate_delay;
   and10100 <= S(4) AND and0100 after AND_gate_delay;
   and10101 <= S(4) AND and0101 after AND_gate_delay;
   and10110 <= S(4) AND and0110 after AND_gate_delay;
   and10111 <= S(4) AND and0111 after AND_gate_delay;
   and11000 <= S(4) AND and1000 after AND_gate_delay; 
   and11001 <= S(4) AND and1001 after AND_gate_delay;
   and11010 <= S(4) AND and1010 after AND_gate_delay;
   and11011 <= S(4) AND and1011 after AND_gate_delay;
   and11100 <= S(4) AND and1100 after AND_gate_delay;
   and11101 <= S(4) AND and1101 after AND_gate_delay;
   and11110 <= S(4) AND and1110 after AND_gate_delay;
   and11111 <= S(4) AND and1111 after AND_gate_delay;
   
    
   and00000_i <= I0 AND and00000 after AND_gate_delay;
   and00001_i <= I1 AND and00001 after AND_gate_delay;
   and00010_i <= I2 AND and00010 after AND_gate_delay;
   and00011_i <= I3 AND and00011 after AND_gate_delay;
   and00100_i <= I4 AND and00100 after AND_gate_delay;
   and00101_i <= I5 AND and00101 after AND_gate_delay;
   and00110_i <= I6 AND and00110 after AND_gate_delay;
   and00111_i <= I7 AND and00111 after AND_gate_delay;
   and01000_i <= I8 AND and01000 after AND_gate_delay;
   and01001_i <= I9 AND and01001 after AND_gate_delay;
   and01010_i <= I10 AND and01010 after AND_gate_delay;
   and01011_i <= I11 AND and01011 after AND_gate_delay;
   and01100_i <= I12 AND and01100 after AND_gate_delay;
   and01101_i <= I13 AND and01101 after AND_gate_delay;
   and01110_i <= I14 AND and01110 after AND_gate_delay;
   and01111_i <= I15 AND and01111 after AND_gate_delay;
   and10000_i <= I16 AND and10000 after AND_gate_delay; 
   and10001_i <= I17 AND and10001 after AND_gate_delay;
   and10010_i <= I18 AND and10010 after AND_gate_delay;
   and10011_i <= I19 AND and10011 after AND_gate_delay;
   and10100_i <= I20 AND and10100 after AND_gate_delay;
   and10101_i <= I21 AND and10101 after AND_gate_delay;
   and10110_i <= I22 AND and10110 after AND_gate_delay;
   and10111_i <= I23 AND and10111 after AND_gate_delay;
   and11000_i <= I24 AND and11000 after AND_gate_delay; 
   and11001_i <= I25 AND and11001 after AND_gate_delay;
   and11010_i <= I26 AND and11010 after AND_gate_delay;
   and11011_i <= I27 AND and11011 after AND_gate_delay;
   and11100_i <= I28 AND and11100 after AND_gate_delay;
   and11101_i <= I29 AND and11101 after AND_gate_delay;
   and11110_i <= I30 AND and11110 after AND_gate_delay;
   and11111_i <= I31 AND and11111 after AND_gate_delay;

   
   or01 <= and00000_i OR and00001_i after OR_gate_delay;
   or02 <= and00010_i OR and00011_i after OR_gate_delay;
   or03 <= and00100_i OR and00101_i after OR_gate_delay;
   or04 <= and00110_i OR and00111_i after OR_gate_delay;
   or05 <= and01000_i OR and01001_i after OR_gate_delay;
   or06 <= and01010_i OR and01011_i after OR_gate_delay;
   or07 <= and01100_i OR and01101_i after OR_gate_delay;
   or08 <= and01110_i OR and01111_i after OR_gate_delay;
   or09 <= and10000_i OR and10001_i after OR_gate_delay;
   or010 <= and10010_i OR and10011_i after OR_gate_delay;
   or011 <= and10100_i OR and10101_i after OR_gate_delay;
   or012 <= and10110_i OR and10111_i after OR_gate_delay;
   or013 <= and11000_i OR and11001_i after OR_gate_delay;
   or014 <= and11010_i OR and11011_i after OR_gate_delay;
   or015 <= and11100_i OR and11101_i after OR_gate_delay;
   or016 <= and11110_i OR and11111_i after OR_gate_delay;
   
   or11 <= or01 OR or02 after OR_gate_delay;
   or12 <= or03 OR or04 after OR_gate_delay;
   or13 <= or05 OR or06 after OR_gate_delay;
   or14 <= or07 OR or08 after OR_gate_delay;
   or15 <= or09 OR or010 after OR_gate_delay;
   or16 <= or011 OR or012 after OR_gate_delay;
   or17 <= or013 OR or014 after OR_gate_delay;
   or18 <= or015 OR or016 after OR_gate_delay;
   
   or21 <=  or11 OR or12 after OR_gate_delay;
   or22 <=  or13 OR or14 after OR_gate_delay;
   or23 <=  or15 OR or16 after OR_gate_delay;
   or24 <=  or17 OR or18 after OR_gate_delay;
   
   or31 <=  or21 OR or22 after OR_gate_delay;
   or32 <=  or23 OR or24 after OR_gate_delay;
  
   Y <=  or31 OR or32 after OR_gate_delay;

end Behavioral;