----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 01.11.2024 17:20:48
-- Design Name: 
-- Module Name: DP_Shifter_23373470_TB - Simulation
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

entity DP_Shifter_23373470_TB is
--  Port ( );
end DP_Shifter_23373470_TB;

architecture Simulation of DP_Shifter_23373470_TB is
component DP_Shifter_23373470 is
    Port ( B : in std_logic_vector (31 downto 0);
           S0 : in std_logic; 
           S1 : in std_logic;
           G : out std_logic_vector (31 downto 0);
           C : out std_logic);
           
end component;

signal S0_tb, S1_tb, C_tb : std_logic;
signal B_tb, g_tb : std_logic_vector (31 downto 0);

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
constant PERIOD : time := 150 ns;
begin

uut : DP_Shifter_23373470 Port Map
(
    B => B_Tb,
    S0 => S0_Tb,
    S1 => S1_Tb,
    G => G_Tb,
    C => C_Tb
);

stim_proc : process 
begin

wait for period;
B_tb <= x"0164A69E"; S0_tb <= '0'; S1_tb <= '0'; 

wait for period;                                
B_tb <= x"0164A69E"; S0_tb <= '1'; S1_tb <= '0'; 

wait for period;                                
B_tb <= x"0164A69E"; S0_tb <= '0'; S1_tb <= '1'; 

wait for period;                                
B_tb <= x"964A69E0"; S0_tb <= '1'; S1_tb <= '0'; 

wait for period;                                
B_tb <= x"164A69E1"; S0_tb <= '0'; S1_tb <= '1'; 
end process;



end Simulation;
