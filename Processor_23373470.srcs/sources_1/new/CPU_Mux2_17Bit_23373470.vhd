----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 18.12.2024 20:55:57
-- Design Name: 
-- Module Name: CPU_Mux2_17Bit_23373470 - Behavioral
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

entity CPU_Mux2_17Bit_23373470 is
 Port ( I0 : in STD_LOGIC_VECTOR(16 downto 0); 
        I1 : in STD_LOGIC_VECTOR(16 downto 0);  -- 17-bit inputs                                                  
        S      : in STD_LOGIC;                      -- single select bit                                              
        Y      : out STD_LOGIC_VECTOR(16 downto 0)  -- 17-bit output        
        );
end CPU_Mux2_17Bit_23373470;

architecture Behavioral of CPU_Mux2_17Bit_23373470 is

   constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
   constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 1
   constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
   constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
   constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
   constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
   constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1                                               
   signal S_not : STD_LOGIC;                                                                                          
   signal And_I0, And_I1 : STD_LOGIC_VECTOR(16 downto 0);  

     
begin


     S_not <= not S after 3 ns;                                                                                        
                                                                                                                      
                                                   
    And_I0(0) <= I0(0) and S_not after AND_gate_delay;                                                                  
    And_I1(0) <= I1(0) and S after AND_gate_delay;                                                                      
    And_I0(1) <= I0(1) and S_not after AND_gate_delay;                                                                  
    And_I1(1) <= I1(1) and S after AND_gate_delay;                                                                      
    And_I0(2) <= I0(2) and S_not after AND_gate_delay;                                                                  
    And_I1(2) <= I1(2) and S after AND_gate_delay;                                                                      
    And_I0(3) <= I0(3) and S_not after AND_gate_delay;                                                                  
    And_I1(3) <= I1(3) and S after AND_gate_delay;                                                                      
    And_I0(4) <= I0(4) and S_not after AND_gate_delay;                                                                  
    And_I1(4) <= I1(4) and S after AND_gate_delay;                                                                      
    And_I0(5) <= I0(5) and S_not after AND_gate_delay;                                                                  
    And_I1(5) <= I1(5) and S after AND_gate_delay;                                                                      
    And_I0(6) <= I0(6) and S_not after AND_gate_delay;                                                                  
    And_I1(6) <= I1(6) and S after AND_gate_delay;                                                                      
    And_I0(7) <= I0(7) and S_not after AND_gate_delay;                                                                  
    And_I1(7) <= I1(7) and S after AND_gate_delay;                                                                      
    And_I0(8) <= I0(8) and S_not after AND_gate_delay;                                                                  
    And_I1(8) <= I1(8) and S after AND_gate_delay;                                                                      
    And_I0(9) <= I0(9) and S_not after AND_gate_delay;                                                                  
    And_I1(9) <= I1(9) and S after AND_gate_delay;                                                                      
    And_I0(10) <= I0(10) and S_not after AND_gate_delay;                                                                
    And_I1(10) <= I1(10) and S after AND_gate_delay;                                                                    
    And_I0(11) <= I0(11) and S_not after AND_gate_delay;                                                                
    And_I1(11) <= I1(11) and S after AND_gate_delay;                                                                    
    And_I0(12) <= I0(12) and S_not after AND_gate_delay;                                                                
    And_I1(12) <= I1(12) and S after AND_gate_delay;                                                                    
    And_I0(13) <= I0(13) and S_not after AND_gate_delay;                                                                
    And_I1(13) <= I1(13) and S after AND_gate_delay;                                                                    
    And_I0(14) <= I0(14) and S_not after AND_gate_delay;                                                                
    And_I1(14) <= I1(14) and S after AND_gate_delay;                                                                    
    And_I0(15) <= I0(15) and S_not after AND_gate_delay;                                                                
    And_I1(15) <= I1(15) and S after AND_gate_delay;                                                                    
    And_I0(16) <= I0(16) and S_not after AND_gate_delay;                                                                
    And_I1(16) <= I1(16) and S after AND_gate_delay;                                                                    
                                                                                                                      
                                                           
    Y(0) <= And_I0(0) or And_I1(0) after OR_gate_delay;                                                                   
    Y(1) <= And_I0(1) or And_I1(1) after OR_gate_delay;                                                                   
    Y(2) <= And_I0(2) or And_I1(2) after OR_gate_delay;                                                                   
    Y(3) <= And_I0(3) or And_I1(3) after OR_gate_delay;                                                                   
    Y(4) <= And_I0(4) or And_I1(4) after OR_gate_delay;                                                                   
    Y(5) <= And_I0(5) or And_I1(5) after OR_gate_delay;                                                                   
    Y(6) <= And_I0(6) or And_I1(6) after OR_gate_delay;                                                                   
    Y(7) <= And_I0(7) or And_I1(7) after OR_gate_delay;                                                                   
    Y(8) <= And_I0(8) or And_I1(8) after OR_gate_delay;                                                                   
    Y(9) <= And_I0(9) or And_I1(9) after OR_gate_delay;                                                                   
    Y(10) <= And_I0(10) or And_I1(10) after OR_gate_delay;                                                                
    Y(11) <= And_I0(11) or And_I1(11) after OR_gate_delay;                                                                
    Y(12) <= And_I0(12) or And_I1(12) after OR_gate_delay;                                                                
    Y(13) <= And_I0(13) or And_I1(13) after OR_gate_delay;                                                                
    Y(14) <= And_I0(14) or And_I1(14) after OR_gate_delay;                                                                
    Y(15) <= And_I0(15) or And_I1(15) after OR_gate_delay;                                                                
    Y(16) <= And_I0(16) or And_I1(16) after OR_gate_delay;            

end Behavioral;
