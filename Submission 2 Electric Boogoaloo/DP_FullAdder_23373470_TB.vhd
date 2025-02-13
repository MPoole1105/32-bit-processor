----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2024 11:52:28
-- Design Name: 
-- Module Name: DP_FullAdder_23373470_TB - Behavioral
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

entity DP_FullAdder_23373470_TB is
--  Port ( );
end DP_FullAdder_23373470_TB;

architecture Behavioral of DP_FullAdder_23373470_TB is

component DP_FullAdder_23373470 is
Port ( A : in std_logic;
           B : in std_logic;
           Cin : in std_logic;
           S : out std_logic;
           Cout : out std_logic);
end component;

signal A_TB, B_Tb, Cin_Tb, s_tb, Cout_TB  :std_logic;

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
constant PERIOD : time := 150 ns;
begin

uut : DP_FullAdder_23373470 PORT MAP
(          A => A_TB,
           B => B_TB,
           Cin => Cin_TB,
           S => S_TB,
           Cout => Cout_TB
 );
          
          
 
stim_proc: process
begin
 
wait for PERIOD;
A_TB <= '0'; B_TB <= '0'; Cin_TB <= '0';

wait for PERIOD;
A_TB <= '0'; B_TB <= '0'; Cin_TB <= '1';

wait for PERIOD;
A_TB <= '0'; B_TB <= '1'; Cin_TB <= '0';

wait for PERIOD;
A_TB <= '0'; B_TB <= '1'; Cin_TB <= '1';

wait for PERIOD;
A_TB <= '1'; B_TB <= '0'; Cin_TB <= '0';

wait for PERIOD;
A_TB <= '1'; B_TB <= '0'; Cin_TB <= '1';

wait for PERIOD;
A_TB <= '1'; B_TB <= '1'; Cin_TB <= '0';

wait for PERIOD;
A_TB <= '1'; B_TB <= '1'; Cin_TB <= '1';

end process;

end Behavioral;
