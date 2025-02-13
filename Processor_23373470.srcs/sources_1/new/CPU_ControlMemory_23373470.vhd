----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 18.12.2024 21:32:17
-- Design Name: 
-- Module Name: CPU_ControlMemory_23373470 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_ControlMemory_23373470 is
      Port ( Address_Input: in std_logic_vector(16 downto 0); 
         NA : out std_logic_vector(16 downto 0);  
         MS : out std_logic_vector(2 downto 0);   
         MC : out std_logic;
         IL : out std_logic; 
         PI : out std_logic;
         PL : out std_logic;
         MB : out std_logic; 
         MD : out std_logic; 
         RW : out std_logic; 
         MM : out std_logic; 
         MW : out std_logic; 
         RV : out std_logic; 
         RC : out std_logic; 
         RN : out std_logic; 
         RZ : out std_logic; 
         FL : out std_logic; 
         FS : out std_logic_vector(4 downto 0);    
         TA : out std_logic_vector(3 downto 0); 
         TB : out std_logic_vector(3 downto 0);
         TD : out std_logic_vector(3 downto 0) 
         );
end CPU_ControlMemory_23373470;

architecture Behavioral of CPU_ControlMemory_23373470 is

    type mem_array is array(0 to 127) of std_logic_vector(50 downto 0);
    signal control_mem : mem_array;
    
    
begin

       -- Process to initialize the memory array
    process
    begin
        for i in 0 to 127 loop
            -- Initialize memory with index values for simplicity
            -- Customize as needed for specific memory patterns
            control_mem(i) <= std_logic_vector(to_unsigned(i, 51));
        end loop;
        wait; -- End process after initialization
    end process;
    
    NA <= control_mem(to_integer(unsigned(Address_Input)))(50 downto 34);
    MS <= control_mem(to_integer(unsigned(Address_Input)))(33 downto 31);
    MC <= control_mem(to_integer(unsigned(Address_Input)))(30);
    IL <= control_mem(to_integer(unsigned(Address_Input)))(29);
    PI <= control_mem(to_integer(unsigned(Address_Input)))(28);
    PL <= control_mem(to_integer(unsigned(Address_Input)))(27);
    MB <= control_mem(to_integer(unsigned(Address_Input)))(26);
    MD <= control_mem(to_integer(unsigned(Address_Input)))(25);
    RW <= control_mem(to_integer(unsigned(Address_Input)))(24);
    MM <= control_mem(to_integer(unsigned(Address_Input)))(23);
    MW <= control_mem(to_integer(unsigned(Address_Input)))(22);
    RV <= control_mem(to_integer(unsigned(Address_Input)))(21);
    RC <= control_mem(to_integer(unsigned(Address_Input)))(20);
    RN <= control_mem(to_integer(unsigned(Address_Input)))(19);
    RZ <= control_mem(to_integer(unsigned(Address_Input)))(18);
    FL <= control_mem(to_integer(unsigned(Address_Input)))(17);
    FS <= control_mem(to_integer(unsigned(Address_Input)))(16 downto 12);
    TA <= control_mem(to_integer(unsigned(Address_Input)))(11 downto 8);
    TB <= control_mem(to_integer(unsigned(Address_Input)))(7 downto 4);
    TD <= control_mem(to_integer(unsigned(Address_Input)))(3 downto 0);

end Behavioral;
