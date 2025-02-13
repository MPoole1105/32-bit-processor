----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.10.2024 14:16:59
-- Design Name: 
-- Module Name: DP_32Bit_B_Logic_23373470 - Behavioral
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

entity DP_32Bit_B_Logic_23373470 is
   Port (B  : in std_logic_vector (31 downto 0);
          S0 : in std_logic ;
          S1 : in std_logic;
          Y  : out std_logic_vector (31 downto 0)
          );             
end DP_32Bit_B_Logic_23373470;

architecture Behavioral of DP_32Bit_B_Logic_23373470 is

component DP_SingleBit_B_Logic_23373470 is
    Port (B  : in std_logic;
          S0 : in std_logic;
          S1 : in std_logic;
          Y  : out std_logic                        
          );                                        
end component;

begin

Bit00 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => b(0),
           Y => Y(0)
           
 );
 
Bit01 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => B(1),
           Y => Y(1)
     
 );
 
 Bit02 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
          B => B(2),
           Y => Y(2)
          
 );
 
 Bit03 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => B(3),
           Y => Y(3)
  
 );
 Bit04 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => B(4),
           Y => Y(4)
           
 );
 
Bit05 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
         B => B(5),
           Y => Y(5)
            
 );
 
 Bit06 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
        B => B(6),
           Y => Y(6)
           
 );
 
 Bit07 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
            B => B(7),
           Y => Y(7)
            );
 Bit08 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => B(8),
           Y => Y(8)
           
 );
 
 Bit09 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => B(9),
           Y => Y(9)
           
 );

Bit10 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => B(10),
           Y => Y(10)
         
 );
 
Bit11 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
          B => B(11),
           Y => Y(11)
           
 );
 
 Bit12 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
          B => b(12),
           Y => Y(12)
           
 );
 
 Bit13 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
        B => b(13),
           Y => Y(13)
       
 );
 Bit14 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
          B => b(14),
           Y => Y(14)
     
 );
 
Bit15 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
        B => b(15),
           Y => Y(15)
            
 );
 
 Bit16 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
         B => b(16),
           Y => Y(16)
   
 );
 
 Bit17 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
            B => b(17),
           Y => Y(17)
          
 );
 Bit18 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => b(18),
           Y => Y(18)
  
 );
 
 Bit19 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => b(19), 
           Y => Y(19)
           
 );

Bit20 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
          B => b(20),
           Y => Y(20)
           
 );
 
Bit21 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
          B => b(21),
           Y => Y(21)
           
 );
 
 Bit22 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => b(22),
           Y => Y(22)
            
 );
 
 Bit23 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => b(23),
            Y => Y(23)
          
 );
 Bit24 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
          B => b(24),
           Y => Y(24)
         
 );
 
Bit25 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => b(25),
           Y => Y(25)
           
 );
 
 Bit26 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => b(26),
           Y => Y(26)
           
 );
 
 Bit27 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
         B => b(27),
           Y => Y(27)
            
 );
 Bit28 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => b(28),
           Y => Y(28)
          
 );
 
 Bit29 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
       B => b(29),
           Y => Y(29)
           
 );
 Bit30 : DP_SingleBit_B_Logic_23373470 PORT MAP
(          S1 => S1,
           S0 => S0,
           B => b(30),
           Y => Y(30)
      
 );
 
 Bit31 : DP_SingleBit_B_Logic_23373470 PORT MAP
(         S1 => S1,
           S0 => S0,
           B => b(31),
           Y => Y(31)
);
end Behavioral;
