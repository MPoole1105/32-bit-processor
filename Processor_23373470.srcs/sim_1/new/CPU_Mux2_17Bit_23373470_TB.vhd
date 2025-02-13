----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 18.12.2024 20:56:45
-- Design Name: 
-- Module Name: CPU_Mux2_17Bit_23373470_TB - Simulation
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

entity CPU_Mux2_17Bit_23373470_TB is
--  Port ( );
end CPU_Mux2_17Bit_23373470_TB;

architecture Simulation of CPU_Mux2_17Bit_23373470_TB is
component CPU_Mux2_17Bit_23373470 is
 Port ( I0 : in STD_LOGIC_VECTOR(16 downto 0); 
        I1 : in STD_LOGIC_VECTOR(16 downto 0);  -- 17-bit inputs                                                  
        S      : in STD_LOGIC;                      -- single select bit                                              
        Y      : out STD_LOGIC_VECTOR(16 downto 0)  -- 17-bit output        
        );
end component;

    signal I0_TB, I1_TB : std_logic_vector(16 downto 0) := (others => '0');  -- Initialize inputs
    signal S_TB : std_logic := '0';  -- Initialize select signal
    signal Y_TB : std_logic_vector(16 downto 0);  -- Output
    constant STUDENTID : std_logic_vector (31 downto 0) := x"0164A69E";
    constant PERIOD : time := 300 ns;
    
begin
    uut: CPU_Mux2_17Bit_23373470 Port map (
            I0 => I0_TB,
            I1 => I1_TB,
            S  => S_TB,
            Y  => Y_TB
        );


     -- Test process
    stim_proc: process
    begin
       
        I0_TB <= "11011011010101010";  -- 17-bit value for I0
        I1_TB <= "00100100100100100";  -- 17-bit value for I1
        S_TB <= '0';
        wait for 200 ns;

        S_TB <= '1';
        wait for 200 ns;

        S_TB <= '0';
        wait for 200 ns;
   

        wait;
    end process;
end Simulation;
