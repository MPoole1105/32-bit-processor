----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 15.10.2024 12:43:22
-- Design Name: 
-- Module Name: RF_Mux3_1Bit_23373470_TB - Simulation
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

entity RF_Mux3_1Bit_23373470_TB is
--  Port ( );
end RF_Mux3_1Bit_23373470_TB;

architecture Simulation of RF_Mux3_1Bit_23373470_TB is

component RF_Mux3_1Bit_23373470 
    Port(I0 : in std_logic;  
     I1 : in std_logic;  
     I2 : in std_logic;  
     S : in std_logic_vector (1 downto 0);
     Y : out std_logic );
    end component;



signal I : std_logic_vector (2 downto 0) := b"000";  
signal Y_TB : std_logic := '0';
signal S_TB : std_logic_vector (1 downto 0) := b"00";
 constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";  

begin
uut: RF_Mux3_1Bit_23373470
        Port map (I0 => I(0),
                  I1 => I(1),
                  I2 => I(2),
                  S => S_TB,
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

end Simulation;
