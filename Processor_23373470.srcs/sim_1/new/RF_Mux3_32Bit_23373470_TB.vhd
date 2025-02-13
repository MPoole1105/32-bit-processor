----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 15.10.2024 15:34:47
-- Design Name: 
-- Module Name: RF_Mux3_32Bit_23373470_TB - Behavioral
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

entity RF_Mux3_32Bit_23373470_TB is
--  Port ( );
end RF_Mux3_32Bit_23373470_TB;

architecture Simulation of RF_Mux3_32Bit_23373470_TB is
component RF_Mux3_32Bit_23373470 is
Port(    I0 : in std_logic_vector (31 downto 0);
         I1 : in std_logic_vector (31 downto 0);
         I2 : in std_logic_vector (31 downto 0);
         S : in std_logic_vector (1 downto 0);
         Y : out std_logic_vector (31 downto 0));
end component;
 signal I0 : std_logic_vector (31 downto 0) := b"00000000000000000000000000000000"; 
 signal I1 : std_logic_vector (31 downto 0) := b"00000000000000000000000000000000"; 
 signal I2 : std_logic_vector (31 downto 0) := b"00000000000000000000000000000000"; 
 signal S_TB : std_logic_vector (1 downto 0) := b"00";
 signal Y_TB : std_logic_vector (31 downto 0);
  constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";  




begin
uut: RF_Mux3_32Bit_23373470
        Port map (I0 => I0,
                  I1 => I1,
                  I2 => I2,
                  S => S_TB,
                  Y => Y_TB);

stim_proc: process
   begin		
      S_TB <= "00";                                            -- case A   
      I0 <= "00000000000000000000000000000000"; I1 <= "00000000000000000000000000000000"; I2 <= "00000000000000000000000000000000";
      wait for 100 ns;
      I0 <= x"0164A69E"; I1 <= "00000000000000000000000000000000"; I2 <= "00000000000000000000000000000000"; 
      wait for 100 ns;
      
      S_TB <= "01";                                            -- case B   
      I0 <= "00000000000000000000000000000000"; I1 <= "00000000000000000000000000000000"; I2 <= "00000000000000000000000000000000";
      wait for 100 ns;
      I0 <= "00000000000000000000000000000000"; I1 <= x"0164A69E"; I2 <= "00000000000000000000000000000000"; 
      wait for 100 ns;
      S_TB <= "10";                                            -- case B   
      I0 <= "00000000000000000000000000000000"; I1 <= "00000000000000000000000000000000"; I2 <= "00000000000000000000000000000000";
      wait for 100 ns;
      I0 <= "00000000000000000000000000000000"; I1 <= "00000000000000000000000000000000"; I2 <= x"0164A69E";
      wait for 100 ns;
     
      end process;
      

end Simulation;
