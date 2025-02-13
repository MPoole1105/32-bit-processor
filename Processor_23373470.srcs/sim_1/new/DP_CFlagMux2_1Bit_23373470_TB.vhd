----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 01.11.2024 16:14:11
-- Design Name: 
-- Module Name: DP_CFlagMux2_1Bit_23373470_TB - Simulation
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

entity DP_CFlagMux2_1Bit_23373470_TB is
--  Port ( );
end DP_CFlagMux2_1Bit_23373470_TB;

architecture Simulation of DP_CFlagMux2_1Bit_23373470_TB is
component DP_CFlagMux2_1Bit_23373470 is
    Port ( F4 : in std_logic;
           C_A : in std_logic;
           C_Shift : in std_logic;
           C : out std_logic  );
end component ;

signal f4_tb, C_A_tb, C_Shift_tb,C_tb : std_logic;

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
constant PERIOD : time := 150 ns;

begin
 
uut : Dp_CFlagMux2_1Bit_23373470 Port map(
        F4 => F4_tb,
        C_A => C_A_tb,
        C_Shift => C_Shift_tb,
        C => C_tb
    );
    
stim_proc : process 
begin
wait for Period;
F4_tb <= '0'; C_A_tb <= '0'; C_Shift_tb <= '0';

wait for Period;
F4_tb <= '0'; C_A_tb <= '1'; C_Shift_tb <= '0';

wait for Period;
F4_tb <= '1'; C_A_tb <= '0'; C_Shift_tb <= '0';

wait for Period;
F4_tb <= '1'; C_A_tb <= '0'; C_Shift_tb <= '1';

end process;
end Simulation;
