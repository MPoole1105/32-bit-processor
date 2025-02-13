----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 31.10.2024 22:44:56
-- Design Name: 
-- Module Name: DP_SingleBit_LogicCircuit_23373470_TB - Simulation
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

entity DP_SingleBit_LogicCircuit_23373470_TB is
--  Port ( );
end DP_SingleBit_LogicCircuit_23373470_TB;

architecture Simulation of DP_SingleBit_LogicCircuit_23373470_TB is
component DP_SingleBit_LogicCircuit_23373470 is
    Port ( A : in std_logic; 
           B : in std_logic;
           S0 : in std_logic;
           S1 : in std_logic;
           G : out std_logic);
end component;

signal A_Tb, B_Tb, S0_TB, S1_Tb, G_tb : std_logic;

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
constant PERIOD : time := 150 ns;

begin 

uut :DP_SingleBit_LogicCircuit_23373470 PORT MAP (
    A => A_Tb,
    B => B_Tb,
    S0 => S0_Tb,
    S1 => S1_tb,
    G => g_tb
);



stim_proc : process
begin
-- AND 
wait for Period;
A_Tb <= '0'; B_Tb <= '0'; S0_Tb <= '0';S1_Tb <= '0';

wait for Period;
A_Tb <= '1'; B_Tb <= '0'; S0_Tb <= '0';S1_Tb <= '0';

wait for Period;
A_Tb <= '0'; B_Tb <= '1'; S0_Tb <= '0';S1_Tb <= '0';

wait for Period;
A_Tb <= '1'; B_Tb <= '1'; S0_Tb <= '0';S1_Tb <= '0';
-- OR
wait for Period;
A_Tb <= '0'; B_Tb <= '0'; S0_Tb <= '0';S1_Tb <= '1';

wait for Period;
A_Tb <= '1'; B_Tb <= '0'; S0_Tb <= '0';S1_Tb <= '1';

wait for Period;
A_Tb <= '0'; B_Tb <= '1'; S0_Tb <= '0';S1_Tb <= '1';

wait for Period;
A_Tb <= '1'; B_Tb <= '1'; S0_Tb <= '0';S1_Tb <= '1';
-- XOR
wait for Period;
A_Tb <= '0'; B_Tb <= '0'; S0_Tb <= '1';S1_Tb <= '0';

wait for Period;
A_Tb <= '1'; B_Tb <= '0'; S0_Tb <= '1';S1_Tb <= '0';

wait for Period;
A_Tb <= '0'; B_Tb <= '1'; S0_Tb <= '1';S1_Tb <= '0';

wait for Period;
A_Tb <= '1'; B_Tb <= '1'; S0_Tb <= '1';S1_Tb <= '0';

-- NOT 
wait for Period;
A_Tb <= '0'; B_Tb <= '0'; S0_Tb <= '1';S1_Tb <= '1';

wait for Period;
A_Tb <= '1'; B_Tb <= '0'; S0_Tb <= '1';S1_Tb <= '1';

end process;


end Simulation;
