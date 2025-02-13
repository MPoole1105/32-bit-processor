----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 01.11.2024 19:04:55
-- Design Name: 
-- Module Name: DP_FunctionalUnit_23373470_TB - Simulation
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

entity DP_FunctionalUnit_23373470_TB is
--  Port ( );
end DP_FunctionalUnit_23373470_TB;

architecture Simulation of DP_FunctionalUnit_23373470_TB is
component DP_FunctionalUnit_23373470 is
    Port ( A : in std_logic_vector (31 downto 0);
           B : in std_logic_vector (31 downto 0); 
           FS : in std_logic_vector (4 downto 0);
           F : out std_logic_vector (31 downto 0);
           N : out std_logic;
           C : out std_logic;
           Z : out std_logic;
           V : out std_logic
           );
           
end component;

signal A_Tb, B_Tb, F_tb : std_logic_vector (31 downto 0);
signal FS_TB : std_logic_vector (4 downto 0); 
signal N_Tb, V_Tb, C_Tb, Z_Tb : std_logic;
constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
constant PERIOD : time := 1000 ns;
begin

uut : DP_FunctionalUnit_23373470 Port Map 
(
    A => A_Tb,
    B => B_Tb,
    FS => FS_Tb,
    F => F_Tb,
    N => N_Tb,
    Z => Z_Tb,
    V => V_Tb,
    C => C_Tb
);

stim_proc : process
begin

wait for Period;
FS_tb <= b"00000";
A_tb <= x"0164A69E"; B_tb <= x"00000000" ;  --1

wait for Period;
FS_tb <= b"11000";
A_tb <= x"0164A69E"; B_tb <= x"02220220" ; --2

wait for Period;
FS_tb <= b"00001";
A_tb <= x"0164A69E"; B_tb <= x"00000000" ; --3

wait for Period;
FS_tb <= b"01000";
A_tb <= x"0164A69E"; B_tb <= x"0FF00FF0" ; --4

wait for Period;
FS_tb <= b"00010";
A_tb <= x"0164A69E"; B_tb <= x"02121211" ; --5

wait for Period;
FS_tb <= b"10000";
A_tb <= x"0164A69E"; B_tb <= x"01234567" ; --6

wait for Period;
FS_tb <= b"00011";
A_tb <= x"0164A69E"; B_tb <= x"01212120" ; --7

wait for Period;                                                              
FS_tb <= b"10100";
A_tb <= x"0164A69E"; B_tb <= x"02200220" ; -- 8

wait for Period;
FS_tb <= b"00100";
A_tb <= x"0164A69E"; B_tb <= x"0164A69E" ;  --9

wait for Period;
FS_tb <= b"01110";
A_tb <= x"0164A69E"; B_tb <= x"00000000" ; --10

wait for Period;
FS_tb <= b"00111";
A_tb <= x"0164A69E"; B_tb <= x"00000000" ; --11

wait for Period;
FS_tb <= b"01010";
A_tb <= x"0164A69E"; B_tb <= x"0FF00FF0" ; --12

wait for Period;
FS_tb <= b"00110";
A_tb <= x"0164A69E"; B_tb <= x"00000000" ; --13

wait for Period;
FS_tb <= b"00101";
A_tb <= x"0164A69E"; B_tb <= x"0164A69D" ; --14

wait for Period;
FS_tb <= b"01100";
A_tb <= x"0164A69E"; B_tb <= x"00FFFF00" ; --15


end process;


end Simulation;
