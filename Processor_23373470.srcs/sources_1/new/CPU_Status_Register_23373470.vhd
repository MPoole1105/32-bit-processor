----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 18.12.2024 13:44:29
-- Design Name: 
-- Module Name: CPU_Status_Register_23373470 - Behavioral
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

entity CPU_Status_Register_23373470 is
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
end CPU_Status_Register_23373470;

architecture Behavioral of CPU_Status_Register_23373470 is

component CPU_JKFlipFlop_23373470 is
    Port (K : in std_logic;
          J : in std_logic;
          Clock : in std_logic;
          Reset : in std_logic;
          Q : out std_logic;
          Q_not : out std_logic );
end component;

 constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
   constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 1
   constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
   constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   
Signal Load_C, Load_Z, Load_V, Load_N : std_logic;


begin
JKFLipFlop_C : CPU_JKFlipFlop_23373470 Port Map
            (   Clock => Clock,
                J => Load_C,
                K => '0',
                Reset => Reset_C_Flag,
                Q => StatusOut(0)
                
            );
JKFLipFlop_V : CPU_JKFlipFlop_23373470 Port Map
            (   Clock => Clock,
                J => Load_V,
                K => '0',
                Reset => Reset_V_Flag,
                Q => StatusOut(1)
           
            );
JKFLipFlop_Z : CPU_JKFlipFlop_23373470 Port Map
            (   Clock => Clock,
                J => Load_Z,
                K => '0',
                Reset => Reset_Z_Flag,
                Q => StatusOut(3)
               
            );
JKFLipFlop_N : CPU_JKFlipFlop_23373470 Port Map
            (   Clock => Clock,
                J => Load_N,
                K => '0',
                Reset => Reset_N_Flag,
                Q => StatusOut(2)
           
            );

Load_C <= Load AND C_Flag after AND_GATE_DELAY; 
Load_Z <= Load AND Z_Flag after AND_GATE_DELAY; 
Load_V <= Load AND V_Flag after AND_GATE_DELAY; 
Load_N <= Load AND N_Flag after AND_GATE_DELAY; 



end Behavioral;
