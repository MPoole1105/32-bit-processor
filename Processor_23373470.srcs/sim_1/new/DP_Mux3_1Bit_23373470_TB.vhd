----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 01.11.2024 13:27:31
-- Design Name: 
-- Module Name: DP_Mux3_1Bit_23373470_TB - Behavioral
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

entity DP_Mux3_1Bit_23373470_TB is
--  Port ( );
end DP_Mux3_1Bit_23373470_TB;

architecture Behavioral of DP_Mux3_1Bit_23373470_TB is

component DP_Mux3_1Bit_23373470 is
    Port(I0 : in std_logic;
         I1 : in std_logic;
         I2 : in std_logic;
         S0 : in std_logic;
         S1 : in std_logic;
         Y : out std_logic );
end component ;

signal I : std_logic_vector (2 downto 0);  
signal Y_TB : std_logic := '0';
signal S_TB : std_logic_vector (1 downto 0) := b"00";
constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";  

begin
uut: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => I(0),
                  I1 => I(1),
                  I2 => I(2),
                  S0 => S_TB(0),
                  S1 => S_TB(1),
                  Y => Y_TB);


stim_proc: process
   begin		
      S_TB <= "00";                                            -- case A   
      I(0) <= '0'; I(1) <= '0'; I(2) <= '0'; 
      
      wait for 60 ns;
      I(0) <= '1'; I(1) <= '0'; I(2) <= '0'; 
      wait for 60 ns;
      
      S_TB <= "01";                                            -- case A   
      I(0) <= '0'; I(1) <= '0'; I(2) <= '0'; 

      wait for 60 ns;
      I(0) <= '0'; I(1) <= '1'; I(2) <= '0'; 
      wait for 60 ns;
      
      S_TB <= "10";                                            -- case A   
      I(0) <= '0'; I(1) <= '0'; I(2) <= '0'; 

      wait for 60 ns;
      I(0) <= '0'; I(1) <= '0'; I(2) <= '1'; 
      wait for 60 ns;
      

end process;

end Behavioral;
