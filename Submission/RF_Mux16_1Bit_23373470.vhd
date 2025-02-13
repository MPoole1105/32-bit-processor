----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 14.10.2024 15:35:48
-- Design Name: 
-- Module Name: RF_Mux16_1Bit_23373470 - Behavioral
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

entity RF_Mux16_1Bit_23373470 is
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
         S : in std_logic_vector (3 downto 0);
         Y : out std_logic );
end RF_Mux16_1Bit_23373470;

architecture Behavioral of RF_Mux16_1Bit_23373470 is

signal and00, and01 , and10, and11, and000, and001, and010, and011, and100, and101, and110, and111 , and0000, and0001, and0010, and0011, and0100, and0101, and0110, and0111, and1000, and1001, and1010, and1011, and1100, and1101, and1110, and1111, S0_not, S1_not , S2_not, S3_not: std_logic;
 signal and0000_i, and0001_i, and0010_i,and0011_i,and0100_i,and0101_i,and0110_i,and0111_i,and1000_i,and1001_i,and1010_i,and1011_i,and1100_i,and1101_i,and1110_i,and1111_i: std_logic;
signal or11, or12 , or13, or14, or15, or16, or17, or18, or21, or22, or23, or24, or31, or32: std_logic;
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
   
   and0000_i <= I0 AND and0000 after AND_gate_delay;
   and0001_i <= I1 AND and0001 after AND_gate_delay;
   and0010_i <= I2 AND and0010 after AND_gate_delay;
   and0011_i <= I3 AND and0011 after AND_gate_delay;
   and0100_i <= I4 AND and0100 after AND_gate_delay;
   and0101_i <= I5 AND and0101 after AND_gate_delay;
   and0110_i <= I6 AND and0110 after AND_gate_delay;
   and0111_i <= I7 AND and0111 after AND_gate_delay;
   and1000_i <= I8 AND and1000 after AND_gate_delay;
   and1001_i <= I9 AND and1001 after AND_gate_delay;
   and1010_i <= I10 AND and1010 after AND_gate_delay;
   and1011_i <= I11 AND and1011 after AND_gate_delay;
   and1100_i <= I12 AND and1100 after AND_gate_delay;
   and1101_i <= I13 AND and1101 after AND_gate_delay;
   and1110_i <= I14 AND and1110 after AND_gate_delay;
   and1111_i <= I15 AND and1111 after AND_gate_delay;
   
   or11 <= and0000_i OR and0001_i after OR_gate_delay;
   or12 <= and0010_i OR and0011_i after OR_gate_delay;
   or13 <= and0100_i OR and0101_i after OR_gate_delay;
   or14 <= and0110_i OR and0111_i after OR_gate_delay;
   or15 <= and1000_i OR and1001_i after OR_gate_delay;
   or16 <= and1010_i OR and1011_i after OR_gate_delay;
   or17 <= and1100_i OR and1101_i after OR_gate_delay;
   or18 <= and1110_i OR and1111_i after OR_gate_delay;
   
   or21 <=  or11 OR or12 after OR_gate_delay;
   or22 <=  or13 OR or14 after OR_gate_delay;
   or23 <=  or15 OR or16 after OR_gate_delay;
   or24 <=  or17 OR or18 after OR_gate_delay;
   
   or31 <=  or21 OR or22 after OR_gate_delay;
   or32 <=  or23 OR or24 after OR_gate_delay;
  
   Y <=  or31 OR or32 after OR_gate_delay;

end Behavioral;
