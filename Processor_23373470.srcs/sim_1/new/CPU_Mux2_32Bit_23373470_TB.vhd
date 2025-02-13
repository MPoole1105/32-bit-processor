----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 01.11.2024 00:30:16
-- Design Name: 
-- Module Name: CPU_Mux2_32Bit_23373470_TB - Simulation
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

entity CPU_Mux2_32Bit_23373470_TB is
--  Port ( );
end CPU_Mux2_32Bit_23373470_TB;

architecture Simulation of CPU_Mux2_32Bit_23373470_TB is
component CPU_Mux2_32Bit_23373470 is
    Port ( I0 : in std_logic_vector (31 downto 0);
           I1 : in std_logic_vector (31 downto 0); 
           S  : in std_logic;
           Y  : out std_logic_vector (31 downto 0) );
end component;

signal I0_tb, i1_tb, y_tb : std_logic_vector (31 downto 0);
signal S_tb : std_logic;
constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
constant PERIOD : time := 150 ns;signal A_Tb, B_Tb, F_tb : std_logic_vector (31 downto 0);
signal FS_TB : std_logic_vector (4 downto 0); 
signal N_Tb, V_Tb, C_Tb, Z_Tb : std_logic;
begin

uut : CPU_Mux2_32Bit_23373470 Port map
(
    I0  => I0_tb,
    I1  => I1_tb,
    S  => S_tb,
    Y  => Y_tb
);

stim_proc : process
begin

wait for Period;
I0_tb <= x"00000000"; I1_tb <= x"00000000"; S_tb <= '0';

wait for Period;
I0_tb <= x"0164A69E"; I1_tb <= x"0164A999"; S_tb <= '0';

wait for Period;
I0_tb <= x"00000000"; I1_tb <= x"00000000"; S_tb <= '1';

wait for Period;
I0_tb <= x"0164A999"; I1_tb <= x"0164A69E"; S_tb <= '1';

end process;

end Simulation;
