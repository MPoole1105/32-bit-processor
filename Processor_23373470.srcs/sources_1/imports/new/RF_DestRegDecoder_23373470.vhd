
-- Company: 
-- Engineer: Matthew Poole 
-- 
-- Create Date: 15.10.2024 19:48:37
-- Design Name: 
-- Module Name: RF_DestRegDecoder_23373470 - Behavioral
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

entity RF_DestRegDecoder_23373470 is
Port(    S : in std_logic_vector (4 downto 0);
         D0 : out std_logic;
         D1 : out std_logic;
         D2 : out std_logic;
         D3 : out std_logic;
         D4 : out std_logic;
         D5 : out std_logic;
         D6 : out std_logic;
         D7 : out std_logic;
         D8 : out std_logic;
         D9 : out std_logic;
         D10 : out std_logic;
         D11 : out std_logic;
         D12 : out std_logic;
         D13 : out std_logic;
         D14 : out std_logic;
         D15 : out std_logic;
         D16 : out std_logic;
         D17 : out std_logic;
         D18 : out std_logic;
         D19 : out std_logic;
         D20 : out std_logic;
         D21 : out std_logic;
         D22 : out std_logic;
         D23 : out std_logic;
         D24 : out std_logic;
         D25 : out std_logic;
         D26 : out std_logic;
         D27 : out std_logic;
         D28 : out std_logic;
         D29 : out std_logic;
         D30 : out std_logic;
         D31 : out std_logic );
end RF_DestRegDecoder_23373470;

architecture Behavioral of RF_DestRegDecoder_23373470 is
  signal and00, and01 , and10, and11, and000, and001, and010, and011, and100, and101, and110, and111 , and0000, and0001, and0010, and0011, and0100, and0101, and0110, and0111, and1000, and1001, and1010, and1011, and1100, and1101, and1110, and1111, S0_not, S1_not , S2_not, S3_not, S4_not: std_logic;
  signal and00000, and00001, and00010,and00011,and00100,and00101,and00110,and00111,and01000,and01001,and01010,and01011,and01100,and01101,and01110,and01111,and10000,and10001,and10010,and10011,and10100,and10101,and10110,and10111,and11000,and11001,and11010,and11011,and11100,and11101,and11110,and11111 : std_logic;
  constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
  constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 
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
  
   D0 <= S4_not AND and0000 after AND_gate_delay;
   D1 <= S4_not AND and0001 after AND_gate_delay;
   D2 <= S4_not AND and0010 after AND_gate_delay;
   D3 <= S4_not AND and0011 after AND_gate_delay;
   D4 <= S4_not AND and0100 after AND_gate_delay;
   D5 <= S4_not AND and0101 after AND_gate_delay;
   D6 <= S4_not AND and0110 after AND_gate_delay;
   D7 <= S4_not AND and0111 after AND_gate_delay;
   D8 <= S4_not AND and1000 after AND_gate_delay;
   D9 <= S4_not AND and1001 after AND_gate_delay;
   D10 <= S4_not AND and1010 after AND_gate_delay;
   D11 <= S4_not AND and1011 after AND_gate_delay;
   D12 <= S4_not AND and1100 after AND_gate_delay;
   D13 <= S4_not AND and1101 after AND_gate_delay;
   D14 <= S4_not AND and1110 after AND_gate_delay;
   D15 <= S4_not AND and1111 after AND_gate_delay;
   D16 <= S(4) AND and0000 after AND_gate_delay; 
   D17 <= S(4) AND and0001 after AND_gate_delay;
   D18 <= S(4) AND and0010 after AND_gate_delay;
   D19 <= S(4) AND and0011 after AND_gate_delay;
   D20 <= S(4) AND and0100 after AND_gate_delay;
   D21 <= S(4) AND and0101 after AND_gate_delay;
   D22 <= S(4) AND and0110 after AND_gate_delay;
   D23 <= S(4) AND and0111 after AND_gate_delay;
   D24 <= S(4) AND and1000 after AND_gate_delay; 
   D25 <= S(4) AND and1001 after AND_gate_delay;
   D26 <= S(4) AND and1010 after AND_gate_delay;
   D27 <= S(4) AND and1011 after AND_gate_delay;
   D28 <= S(4) AND and1100 after AND_gate_delay;
   D29 <= S(4) AND and1101 after AND_gate_delay;
   D30 <= S(4) AND and1110 after AND_gate_delay;
   D31 <= S(4) AND and1111 after AND_gate_delay;

end Behavioral;
