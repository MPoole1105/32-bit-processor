----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 17.12.2024 14:44:37
-- Design Name: 
-- Module Name: CPU_SignExtend_23373470_TB - Simulation
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

entity CPU_SignExtend_23373470_TB is
--  Port ( );
end CPU_SignExtend_23373470_TB;

architecture Simulation of CPU_SignExtend_23373470_TB is

component CPU_SignExtend_23373470 is
     Port (
        input : in std_logic_vector (9 downto 0);
        output : out std_logic_vector(31 downto 0)
    );
end component;
    signal input_TB : std_logic_vector (9 downto 0);
    signal output_TB : std_logic_vector (31 downto 0);
    constant STUDENTID : std_logic_vector (31 downto 0) := x"0164A69E";
    constant PERIOD : time := 200 ns; 
begin


  -- Instantiate the Unit Under Test (UUT)
  uut: CPU_SignExtend_23373470 PORT MAP (
         input => input_TB, output => output_TB
       );

  stim_proc: process
   begin	
      
      input_TB <= "1000001110";      
      
      wait for PERIOD;
      
         
      input_TB <= "0111110001";      
     
     wait for PERIOD;

   end process;

end Simulation;
