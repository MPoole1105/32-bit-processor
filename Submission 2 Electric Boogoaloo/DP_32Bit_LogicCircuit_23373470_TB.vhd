----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2024 23:22:43
-- Design Name: 
-- Module Name: DP_32Bit_LogicCircuit_23373470_TB - Simulation
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

entity DP_32Bit_LogicCircuit_23373470_TB is
--  Port ( );
end DP_32Bit_LogicCircuit_23373470_TB;

architecture Simulation of DP_32Bit_LogicCircuit_23373470_TB is
component DP_32Bit_LogicCircuit_23373470 is
    Port ( A : in std_logic_vector (31 downto 0); 
           B : in std_logic_vector (31 downto 0);
           S0 : in std_logic;
           S1 : in std_logic;
           G : out std_logic_vector (31 downto 0) );
end component;

signal A_Tb, B_Tb, G_tb : std_logic_vector (31 downto 0);
signal S0_TB, S1_Tb : std_logic;

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
constant PERIOD : time := 150 ns;

begin
uut :DP_32Bit_LogicCircuit_23373470 PORT MAP (
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
A_Tb <= x"0164A69E"; B_Tb <= x"FFFFFFFF"; S0_Tb <= '0';S1_Tb <= '0';

wait for Period;
A_Tb <= x"0164A69E"; B_Tb <= x"F0F0F0F0"; S0_Tb <= '0';S1_Tb <= '0';

wait for Period;
A_Tb <= x"0164A69E"; B_Tb <= x"0F0F0F0F"; S0_Tb <= '0';S1_Tb <= '0';

wait for Period;
A_Tb <= x"0164A69E"; B_Tb <= x"00000000"; S0_Tb <= '0';S1_Tb <= '0';

-- XOR
wait for Period;
A_Tb <= x"0164A69E"; B_Tb <= x"00000000"; S0_Tb <= '0';S1_Tb <= '1';

wait for Period;
A_Tb <= x"0164A69E"; B_Tb <= x"FE9B5961"; S0_Tb <= '0';S1_Tb <= '1';

wait for Period;
A_Tb <= x"0164A69E"; B_Tb <= x"FFFFFFFF"; S0_Tb <= '0';S1_Tb <= '1';

wait for Period;
A_Tb <= x"0164A69E"; B_Tb <= x"0164A69E"; S0_Tb <= '0';S1_Tb <= '1';
-- OR

wait for Period;
A_Tb <= x"0164A69E"; B_Tb <= x"00000000"; S0_Tb <= '1';S1_Tb <= '0';

wait for Period;
A_Tb <= x"0164A69E"; B_Tb <= x"F00FF00F"; S0_Tb <= '1';S1_Tb <= '0';

wait for Period;
A_Tb <= x"0164A69E"; B_Tb <= x"0FF00FF0"; S0_Tb <= '1';S1_Tb <= '0';

wait for Period;
A_Tb <= x"0164A69E"; B_Tb <= x"80000008"; S0_Tb <= '1';S1_Tb <= '0';

-- NOT 
wait for Period;
A_Tb <= x"0164A69E"; B_Tb <= x"00000000"; S0_Tb <= '1';S1_Tb <= '1';


end process;

end Simulation;
