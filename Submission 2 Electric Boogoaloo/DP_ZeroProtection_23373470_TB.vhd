----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2024 18:04:33
-- Design Name: 
-- Module Name: DP_ZeroProtection_23373470_TB - Simulation
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

entity DP_ZeroProtection_23373470_TB is
--  Port ( );
end DP_ZeroProtection_23373470_TB;

architecture Simulation of DP_ZeroProtection_23373470_TB is
component DP_ZeroDetection_23373470 is
       Port (A : in std_logic_vector (31 downto 0);
             Y : out std_logic );
end component;

signal A_tb : std_logic_vector (31 downto 0); 
signal Y_tb : std_logic; 

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E"; 
constant PERIOD : time := 150 ns;


begin

uut : DP_ZeroDetection_23373470 Port Map
(
    A => A_tb,
    Y => Y_tb
);

stim_proc : process
begin

wait for period;
A_tb <= x"00000000";

wait for period;
A_tb <= x"0164A69E";

end process;

end Simulation;
