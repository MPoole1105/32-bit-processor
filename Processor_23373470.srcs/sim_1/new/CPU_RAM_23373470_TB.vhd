
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 16.12.2024 16:30:26
-- Design Name: 
-- Module Name: CPU_RAM_23373470_TB - Simulation
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
use IEEE.NUMERIC_STD.ALL;  -- Include this for to_unsigned and other numeric functions

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_RAM_23373470_TB is
--  Port ( );
end CPU_RAM_23373470_TB;

architecture Simulation of CPU_RAM_23373470_TB is

component CPU_RAM_23373470 is
    Port ( 
        Clock : in STD_LOGIC ;
        Address_in : in STD_LOGIC_VECTOR (31 downto 0) ;
        DataIn : in STD_LOGIC_VECTOR (31 downto 0) ;
        WriteEnable : in STD_LOGIC ;
        DataOut : out STD_LOGIC_VECTOR (31 downto 0)
     ) ;
end component;
    
    Signal Address_in_TB, DataIn_TB, DataOut_TB : std_logic_vector (31 downto 0) := (others => '0');
    Signal CLK_TB, WriteEnable_TB : STD_LOGIC := '0';
     constant START_VAL : STD_LOGIC_VECTOR (31 downto 0) := x"00000D8E"; -- Decimal 3470 in hex
    constant INIT_VAL : integer := 70; -- Decimal value to initialize memory
    constant STUDENTID : std_logic_vector (31 downto 0) := x"0164A69E";
    constant PERIOD : time := 300 ns;
    
begin

     uut : CPU_RAM_23373470 
     Port map(
            Clock => CLK_tb,
            Address_in => Address_in_TB,
            DataIn => DataIn_TB,
            WriteEnable => WriteEnable_TB,
            DataOut => DataOut_TB
        );

  CLK_TB <= not CLK_TB after PERIOD/2;         
  
  
stim_proc : process                                      
begin                                                    
   
 -- Initialize memory with incremental values starting at INIT_VAL (70 decimal)
        WriteEnable_TB <= '1';
        for i in 0 to 56 loop
            Address_in_TB <= std_logic_vector(to_unsigned(i, 32));
            DataIn_TB <= std_logic_vector(to_unsigned(INIT_VAL + i, 32));
            wait for PERIOD;
        end loop;
        
        for i in 57 to 127 loop
            Address_in_TB <= std_logic_vector(to_unsigned(i, 32));
            DataIn_TB <= std_logic_vector(to_unsigned(INIT_VAL + i, 32));
            wait for PERIOD;
        end loop;
        
        

        -- Disable WriteEnable
        WriteEnable_TB <= '0';

        -- Overwrite 32 memory locations starting at address 0
        WriteEnable_TB <= '1';
        for i in 0 to 31 loop
            Address_in_TB <= std_logic_vector(to_unsigned(i, 32));
            DataIn_TB <= x"0000ABCD"; -- Example new data
            wait for PERIOD;
        end loop;

        -- Demonstrate that overwrite doesn't work if WriteEnable_TB is unset
        WriteEnable_TB <= '0';
        for i in 0 to 31 loop
            Address_in_TB <= std_logic_vector(to_unsigned(i, 32));
            DataIn_TB <= x"0000FFFF"; -- Attempt to write new data
            wait for PERIOD;
        end loop;

    
        wait;
    end process;

        



end Simulation;
