----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 17.12.2024 16:18:13
-- Design Name: 
-- Module Name: CPU_SMux_23373470_TB - Simulation
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

entity CPU_SMux_23373470_TB is
--  Port ( );
end CPU_SMux_23373470_TB;

architecture Simulation of CPU_SMux_23373470_TB is
       component CPU_SMux_23373470
        Port (
            Zero : in STD_LOGIC;
            Z_Flag : in STD_LOGIC;
            V_Flag : in STD_LOGIC;
            One : in STD_LOGIC;
            C_Flag : in STD_LOGIC;
            N_Flag : in STD_LOGIC;
            C_Flag_Not : in STD_LOGIC;
            Z_Flag_Not : in STD_LOGIC;
            MS : in STD_LOGIC_vector(2 downto 0);
            CAR : out STD_LOGIC
        );
    end component;
  signal Zero_TB, Z_Flag_TB, V_Flag_TB, One_TB, C_Flag_TB, N_Flag_TB, C_Flag_Not_TB, Z_Flag_Not_TB : STD_LOGIC := '0';
    signal MS_TB : STD_LOGIC_vector(2 downto 0) := (others => '0');
    constant STUDENTID : std_logic_vector (31 downto 0) := x"0164A69E";
    constant PERIOD : time := 300 ns;
    signal CAR_TB : STD_LOGIC;

    -- Clock period definitions (not required here as it's combinational logic)

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: CPU_SMux_23373470
        Port map (
            Zero => Zero_TB,
            Z_Flag => Z_Flag_TB,
            V_Flag => V_Flag_TB,
            One => One_TB,
            C_Flag => C_Flag_TB,
            N_Flag => N_Flag_TB,
            C_Flag_Not => C_Flag_Not_TB,
            Z_Flag_Not => Z_Flag_Not_TB,
            MS => MS_TB,
            CAR => CAR_TB
        );

    -- Stimulus process
    stim_proc: process
    begin
       
        Zero_TB <= '0';
        Z_Flag_TB <= '0';
        V_Flag_TB <= '0';
        One_TB <= '0';
        C_Flag_TB <= '0';
        N_Flag_TB <= '0';
        C_Flag_Not_TB <= '0';
        Z_Flag_Not_TB <= '0';
        MS_TB <= "000";
        wait for 300 ns;

      
        Zero_TB <= '1';
        MS_TB <= "000";
        wait for 300 ns;

        Zero_TB <= '0';
        Z_Flag_TB <= '1';
        wait for 300 ns;  
        MS_TB <= "001";
        wait for 300 ns;   
        
        V_Flag_TB <= '1';
        Z_Flag_TB <= '0';
        wait for 300 ns;  
        MS_TB <= "010";
        wait for 300 ns;

        One_TB <= '1';
        V_Flag_TB <= '0';
        wait for 300 ns;  
        MS_TB <= "011";
        wait for 300 ns;

        C_Flag_TB <= '1';
        One_TB <= '0';
        wait for 300 ns;  
        MS_TB <= "100";
        wait for 300 ns;

        N_Flag_TB <= '1';
        C_Flag_TB <= '0';
        wait for 300 ns;  
        MS_TB <= "101";
        wait for 300 ns;

        C_Flag_Not_TB <= '1';
        N_Flag_TB <= '0';
        wait for 300 ns;  
        MS_TB <= "110";
        wait for 300 ns;

        Z_Flag_Not_TB <= '1';
        C_Flag_Not_TB <= '0';
        wait for 300 ns;  
        MS_TB <= "111";
        wait for 300 ns;
        Z_Flag_Not_TB <= '0';

    end process;

end Simulation;