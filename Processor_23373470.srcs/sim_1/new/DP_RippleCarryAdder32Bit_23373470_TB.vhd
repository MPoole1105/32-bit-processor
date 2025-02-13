----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 31.10.2024 12:54:56
-- Design Name: 
-- Module Name: DP_RippleCarryAdder32Bit_23373470_TB - Simulation
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

entity DP_RippleCarryAdder32Bit_23373470_TB is
--  Port ( );
end DP_RippleCarryAdder32Bit_23373470_TB;

architecture Simulation of DP_RippleCarryAdder32Bit_23373470_TB is
component DP_RippleCarryAddder32Bit_23373470 is
    Port ( A_R : in std_logic_vector (31 downto 0);
           B_R : in std_logic_vector (31 downto 0);
           Cin_R : in std_logic;
           S_R : out std_logic_vector (31 downto 0);
           Cout : out std_logic;
           V : out std_logic  );
           
end component;

signal A_TB, B_TB, S_TB : std_logic_vector (31 downto 0);
signal Cin_TB, Cout_TB, V_Tb : std_logic;

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
constant PERIOD : time := 250 ns;

begin

uut : DP_RippleCarryAddder32Bit_23373470 PORT map

(   A_R => A_TB,
    B_R => B_TB,
    Cin_R => Cin_Tb,
    S_R => S_TB, 
    Cout => Cout_TB,
    V => V_Tb


);

stim_proc : process
begin 
wait for PERIOD;
A_TB <= x"FFFFFFFF"; B_TB <= x"00000000"; Cin_TB <= '1';  -- ++

wait for PERIOD;
A_TB <= x"00F00001"; B_TB <= x"00000FFE"; Cin_TB <= '0'; -- ++ V

wait for PERIOD;
A_TB <= x"F0FFFFFE"; B_TB <= x"00FFFFFF"; Cin_TB <= '0'; -- +-

wait for PERIOD;
A_TB <= x"F8000000"; B_TB <= x"F7000000"; Cin_TB <= '0'; -- -- 

wait for PERIOD;
A_TB <= x"80000001"; B_TB <= x"80000000"; Cin_TB <= '0'; -- -- V

wait for PERIOD;
A_TB <= x"0164A69E"; B_TB <= x"FFFFFFFF"; Cin_TB <= '0'; -- SN C

wait for PERIOD;
A_TB <= x"0164A69E"; B_TB <= x"0F000000"; Cin_TB <= '0'; -- SN V


end process;

end Simulation;
