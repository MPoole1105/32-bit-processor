----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2024 15:36:34
-- Design Name: 
-- Module Name: DP_ShifterCFlagMux2_1Bit_23373470_TB - Behavioral
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

entity DP_ShifterCFlagMux2_1Bit_23373470_TB is
--  Port ( );
end DP_ShifterCFlagMux2_1Bit_23373470_TB;


architecture Behavioral of DP_ShifterCFlagMux2_1Bit_23373470_TB is
component DP_ShifterCFlagMux2_1Bit_23373470 is
   Port ( LSB : in std_logic;
          S0 : in std_logic;
          MSB : in std_logic;
          S1 : in std_logic; 
          Y  : out std_logic);
end component;

signal LSB_TB, S0_Tb, MSB_Tb, S1_Tb, Y_Tb : std_logic;

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
constant PERIOD : time := 150 ns;

begin

uut: DP_ShifterCFlagMux2_1Bit_23373470 Port Map
(
         LSB =>LSB_TB,
          S0 => S0_TB,
         MSB => MSB_TB,
          S1 => S1_TB,
          Y  => Y_TB
);


stim_proc : process
begin

    wait for Period;
    LSB_TB <= '0'; S0_Tb <= '1';  MSB_TB <= '0'; S1_Tb <= '0';
    wait for Period;
    LSB_TB <= '1'; S0_Tb <= '1';  MSB_TB <= '0'; S1_Tb <= '0';
    wait for Period;
    LSB_TB <= '0'; S0_Tb <= '0';  MSB_TB <= '0'; S1_Tb <= '1';
    wait for Period;
    LSB_TB <= '0'; S0_Tb <= '0';  MSB_TB <= '1'; S1_Tb <= '1';
    
    
end process;



end Behavioral;
