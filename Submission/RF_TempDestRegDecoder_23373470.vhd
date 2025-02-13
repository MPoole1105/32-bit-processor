
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 16.10.2024 09:05:18
-- Design Name: 
-- Module Name: RF_TempDestRegDecoder_23373470 - Behavioral
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

entity RF_TempDestRegDecoder_23373470 is
Port(    S : in std_logic_vector (3 downto 0);
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
         D15 : out std_logic );
end RF_TempDestRegDecoder_23373470;

architecture Behavioral of RF_TempDestRegDecoder_23373470 is
  signal and00, and01 , and10, and11, and000, and001, and010, and011, and100, and101, and110, and111 , S0_not, S1_not , S2_not, S3_not, t: std_logic;
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
   
   D0 <= S3_not AND and000 after AND_gate_delay;
   D1 <= S3_not AND and001 after AND_gate_delay;
   D2 <= S3_not AND and010 after AND_gate_delay;
   D3 <= S3_not AND and011 after AND_gate_delay;
   D4 <= S3_not AND and100 after AND_gate_delay;
   D5 <= S3_not AND and101 after AND_gate_delay;
   D6 <= S3_not AND and110 after AND_gate_delay;
   D7 <= S3_not AND and111 after AND_gate_delay;
   D8 <= S(3) AND and000 after AND_gate_delay;
   D9 <= S(3) AND and001 after AND_gate_delay;
   D10 <= S(3) AND and010 after AND_gate_delay;
   D11 <= S(3) AND and011 after AND_gate_delay;
   D12 <= S(3) AND and100 after AND_gate_delay;
   D13 <= S(3) AND and101 after AND_gate_delay;
   D14 <= S(3) AND and110 after AND_gate_delay;
   D15 <= S(3) AND and111 after AND_gate_delay;



end Behavioral;
