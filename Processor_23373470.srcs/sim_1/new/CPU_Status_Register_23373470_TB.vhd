----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 18.12.2024 14:19:51
-- Design Name: 
-- Module Name: CPU_Status_Register_23373470_TB - Simulation
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

entity CPU_Status_Register_23373470_TB is
--  Port ( );
end CPU_Status_Register_23373470_TB;

architecture Simulation of CPU_Status_Register_23373470_TB is
component CPU_Status_Register_23373470 is
    Port (Clock : in std_logic;
          Load : in std_logic;
          Reset_N_Flag : in std_logic;
          N_Flag : in std_logic; 
          Reset_C_Flag : in std_logic;
          C_Flag : in std_logic;
          Reset_V_Flag : in std_logic;
          V_Flag : in std_logic;
          Reset_Z_FLag : in std_logic;
          Z_Flag : in std_logic;
          StatusOut : out std_logic_vector(3 downto 0));
end component;

Signal CLK_TB, Load_TB, Reset_N_Flag_TB, N_Flag_TB, Reset_C_Flag_TB, C_Flag_TB, Reset_V_Flag_TB, V_Flag_TB, Reset_Z_Flag_TB, Z_Flag_TB : std_logic := '0';
Signal StatusOut_TB : std_logic_vector(3 downto 0);
constant StudentID : STD_LOGIC_VECTOR (27 downto 0) := x"164A69E";   -- 23373470
constant PERIOD : time := 200ns;


begin

uut : CPU_Status_Register_23373470  Port Map
         (Clock => CLK_TB,
          Load => Load_TB,
          Reset_N_Flag => Reset_N_Flag_TB,
          N_Flag => N_Flag_TB,
          Reset_C_Flag => Reset_C_Flag_TB,
          C_Flag => C_Flag_TB,
          Reset_V_Flag => Reset_V_Flag_TB,
          V_Flag => V_Flag_TB,
          Reset_Z_FLag => Reset_Z_Flag_TB, 
          Z_Flag => Z_Flag_TB,
          StatusOut => StatusOut_tb 
          );

 Clk_TB <= not Clk_TB after PERIOD/2;

  stim_proc: process
   begin	
   
      Reset_C_Flag_TB <= '1'; -- Case A
      Reset_V_Flag_TB <= '1';
      Reset_N_Flag_TB <= '1';
      Reset_Z_Flag_TB <= '1';
      wait for PERIOD;
   
      Load_TB <= '1';
      Reset_C_Flag_TB <= '0'; 
      Reset_V_Flag_TB <= '0';
      Reset_N_Flag_TB <= '0';
      Reset_Z_Flag_TB <= '0';
      
      C_Flag_TB <= '1';
      wait for PERIOD;
      V_Flag_TB <= '1';
      wait for PERIOD;
      N_Flag_TB <= '1';
      wait for PERIOD;
      Z_Flag_TB <= '1';
      wait for PERIOD;
      
      Reset_C_Flag_TB <= '1'; 
      Reset_V_Flag_TB <= '1';
      Reset_N_Flag_TB <= '1';
      Reset_Z_Flag_TB <= '1';
      
      wait;

   end process;

end Simulation;
