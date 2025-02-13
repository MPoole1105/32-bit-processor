----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 31.10.2024 02:22:12
-- Design Name: 
-- Module Name: DP_Shifter_23373470 - Behavioral
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

entity DP_Shifter_23373470 is
    Port ( B : in std_logic_vector (31 downto 0);
           S0 : in std_logic; 
           S1 : in std_logic;
           G : out std_logic_vector (31 downto 0);
           C : out std_logic);
           
end DP_Shifter_23373470;

architecture Behavioral of DP_Shifter_23373470 is

component DP_Mux3_1Bit_23373470 is
    Port(I0 : in std_logic;
         I1 : in std_logic;
         I2 : in std_logic;
         S0 : in std_logic;
         S1 : in std_logic;
         Y : out std_logic );
end component ;

component DP_ShifterCFlagMux2_1Bit_23373470 is
   Port ( LSB : in std_logic;
          S0 : in std_logic;
          MSB : in std_logic;
          S1 : in std_logic; 
          Y  : out std_logic);
end component;



signal LSB_sh, S0_sh, MSB_sh, S1_sh, Y_sh : std_logic;


begin

bit00: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(0),
                  I1 => '0',
                  I2 => B(1),
                  S0 => S0,
                  S1 => S1,
                  Y => G(0));
bit01: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(1),
                  I1 => B(0),
                  I2 => B(2),
                  S0 => S0,
                  S1 => S1,
                  Y => G(1));
bit02: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(2),
                  I1 => B(1),
                  I2 => B(3),
                  S0 => S0,
                  S1 => S1,
                  Y  => G(2)); 
bit03: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(3),
                  I1 => B(2),
                  I2 => B(4),
                  S0 => S0,
                  S1 => S1,
                  Y  => G(3));                   
bit04: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(4),
                  I1 => B(3),
                  I2 => B(5),
                  S0 => S0,
                  S1 => S1,
                  Y  => G(4)); 
bit05: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(5),
                  I1 => B(4),
                  I2 => B(6),
                  S0 => S0,
                  S1 => S1,
                  Y  => G(5)); 
bit06: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(6),
                  I1 => B(5),
                  I2 => B(7),
                  S0 => S0,
                  S1 => S1,
                  Y  => G(6)); 
bit07: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(7),
                  I1 => B(6),
                  I2 => B(8),
                  S0 => S0,
                  S1 => S1,
                  Y  => G(7));      
bit08: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(8),
                  I1 => B(7),
                  I2 => B(9),
                  S0 => S0,
                  S1 => S1,
                  Y  => G(8)); 
bit09: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(9),
                  I1 => B(8),
                  I2 => B(10),
                  S0 => S0,
                  S1 => S1,
                  Y  => G(9)); 
bit10: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(10) ,
                  I1 => B(9) ,
                  I2 => B(11),
                  S0 => S0,
                  S1 => S1,
                  Y  => G(10) ); 
bit11: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(11) ,
                  I1 => B(10) ,
                  I2 => B(12) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(11) );   
bit12: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(12) ,
                  I1 => B(11) ,
                  I2 => B(13) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(12) ); 
bit13: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(13) ,
                  I1 => B(12) ,
                  I2 => B(14) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(13) ); 
bit14: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(14) ,
                  I1 => B(13) ,
                  I2 => B(15) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(14) ); 
bit15: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(15) ,
                  I1 => B(14) ,
                  I2 => B(16) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(15) ); 
bit16: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(16) ,
                  I1 => B(15) ,
                  I2 => B(17) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(16) ); 
bit17: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(17) ,
                  I1 => B(16) ,
                  I2 => B(18) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(17) ); 
bit18: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(18) ,
                  I1 => B(17) ,
                  I2 => B(19) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(18) ); 
bit19: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(19) ,
                  I1 => B(18) ,
                  I2 => B(20) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(19) );        
bit20: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(20) ,
                  I1 => B(19) ,
                  I2 => B(21) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(20) ); 
bit21: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(21) ,
                  I1 => B(20) ,
                  I2 => B(22) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(21) );   
bit22: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(22) ,
                  I1 => B(21) ,
                  I2 => B(23) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(22) ); 
bit23: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(23) ,
                  I1 => B(22) ,
                  I2 => B(24) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(23) ); 
bit24: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(24) ,
                  I1 => B(23) ,
                  I2 => B(25) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(24) ); 
bit25: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(25) ,
                  I1 => B(24) ,
                  I2 => B(26) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(25) ); 
bit26: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(26) ,
                  I1 => B(25) ,
                  I2 => B(27) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(26) ); 
bit27: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(27) ,
                  I1 => B(26) ,
                  I2 => B(28) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(27) ); 
bit28: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(28) ,
                  I1 => B(27) ,
                  I2 => B(29) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(28) ); 
bit29: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(29) ,
                  I1 => B(28) ,
                  I2 => B(30) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(29)
                  );
bit30: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(30) ,
                  I1 => B(29) ,
                  I2 => B(31) ,
                  S0 => S0,
                  S1 => S1,
                  Y  => G(30) );                               

bit31: DP_Mux3_1Bit_23373470 Port map 
                 (I0 => B(31),
                  I1 => B(30),
                  I2 => '0',
                  S0 => S0,
                  S1 => S1,
                  Y  => G(31)); 
 

CFlagMux : DP_ShifterCFlagMux2_1Bit_23373470 Port Map
(
         LSB => B(0),
          S0 => S0,
         MSB => B(31),
          S1 => S1,
          Y  => C
);

end Behavioral;
