----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 31.10.2024 14:37:42
-- Design Name: 
-- Module Name: DP_32Bit_B_Logic_23373470_TB - Behavioral
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

entity DP_32Bit_B_Logic_23373470_TB is
--  Port ( );
end DP_32Bit_B_Logic_23373470_TB;

architecture Behavioral of DP_32Bit_B_Logic_23373470_TB is
component DP_32Bit_B_Logic_23373470 is
   Port (B  : in std_logic_vector (31 downto 0);
          S0 : in std_logic ;
          S1 : in std_logic;
          Y  : out std_logic_vector (31 downto 0)
          );             
end component ;


signal S0_Tb, S1_TB : std_logic;
signal B_tb, Y_Tb : std_logic_vector (31 downto 0);

constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";
constant PERIOD : time := 150 ns;

begin 

uut : DP_32Bit_B_Logic_23373470 Port Map (

    B => B_Tb,
    S0 => S0_Tb,
    S1 => S1_Tb,
    Y => Y_Tb

);



stim_proc : process
begin
wait for PERIOD/2;
b_tb <= x"0164A69E"; S0_TB <= '0'; S1_TB <= '0';

wait for Period/2; 
b_tb <= x"0164A69E"; S0_TB <= '0'; S1_TB <= '1';

wait for PERIOD/2;
b_tb <= x"0164A69E"; S0_TB <= '1'; S1_TB <= '0';

wait for Period/2; 
b_tb <= x"0164A69E"; S0_TB <= '1'; S1_TB <= '1';

end process;

end Behavioral;
