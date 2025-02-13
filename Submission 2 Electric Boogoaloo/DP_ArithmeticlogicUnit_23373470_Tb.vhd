----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.11.2024 11:59:07
-- Design Name: 
-- Module Name: DP_ArithmeticlogicUnit_23373470_Tb - Simulation
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

entity DP_ArithmeticlogicUnit_23373470_Tb is
--  Port ( );
end DP_ArithmeticlogicUnit_23373470_Tb;

architecture Simulation of DP_ArithmeticlogicUnit_23373470_Tb is


component DP_ArithmeticLogicUnit_23373470 is
    Port ( A : in std_logic_vector (31 downto 0);
           C_In : in std_logic;
           B : in std_logic_vector (31 downto 0);
           S0 : in std_logic;
           S1 : in std_logic;
           S2 : in std_logic;
           C : out std_logic;
           V : out std_logic;
           g : out std_logic_vector (31 downto 0)
           );
end component;

signal  Cin_Tb, S0_tb, s1_tb, s2_tb, c_tb, v_tb: std_logic;

signal A_Tb,B_Tb, g_tb : std_logic_vector(31 downto 0);

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
constant PERIOD : time := 500 ns;

begin

uut: DP_ArithmeticLogicUnit_23373470 PORT MAP
          ( A => A_tb,
           C_In => Cin_tb,
           B => b_tb,
           S0 => s0_tb,
           S1 => s1_tb,
           S2 => s2_tb,
           C => c_tb,
           V => v_tb,
           g => g_tb
); 
stim_proc : process
begin 

wait for PERIOD;
-- A+1
A_tb <= x"0164A69E" ; B_tb <= x"00000000" ; Cin_Tb <= '1';S0_tb <= '0'; S1_tb <= '0'; S2_tb <= '0'; 

wait for PERIOD;
-- A+B
A_tb <= x"0164A69E" ; B_tb <= x"0D8A4850" ; Cin_Tb <= '0';S0_tb <= '0'; S1_tb <= '1'; S2_tb <= '0'; 

wait for PERIOD;
-- A+B+1
A_tb <= x"0164A69E" ; B_tb <= x"0E9B5960" ; Cin_Tb <= '1';S0_tb <= '0'; S1_tb <= '1'; S2_tb <= '0'; 

wait for PERIOD;
--A-1
A_tb <= x"0164A69E" ; B_tb <= x"FFFFFFFF" ; Cin_Tb <= '0';S0_tb <= '1'; S1_tb <= '1'; S2_tb <= '0'; 

wait for PERIOD;
--A 1scompB
A_tb <= x"0164A69E" ; B_tb <= x"0164A69E" ; Cin_Tb <= '0';S0_tb <= '0'; S1_tb <= '1'; S2_tb <= '0'; 

wait for PERIOD;
--A 1scompB +1
A_tb <= x"0164A69E" ; B_tb <= x"0164A69E" ; Cin_Tb <= '1';S0_tb <= '0'; S1_tb <= '1'; S2_tb <= '0'; 

wait for PERIOD;
--A AND B
A_tb <= x"0164A69E" ; B_tb <= x"FF00FF00" ; Cin_Tb <= '0';S0_tb <= '0'; S1_tb <= '0'; S2_tb <= '1'; 

wait for PERIOD;
-- A XOR B
A_tb <= x"0164A69E" ; B_tb <= x"00FFFF00" ; Cin_Tb <= '0';S0_tb <= '0'; S1_tb <= '1'; S2_tb <= '1'; 

wait for PERIOD;
-- A OR B 
A_tb <= x"0164A69E" ; B_tb <= x"FF0000FF" ; Cin_Tb <= '0';S0_tb <= '1'; S1_tb <= '0'; S2_tb <= '1'; 

wait for PERIOD;
-- A Not
A_tb <= x"0164A69E" ; B_tb <= x"00000000" ; Cin_Tb <= '0';S0_tb <= '1'; S1_tb <= '1'; S2_tb <= '1'; 


end process;

end Simulation;
