----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole 
-- 
-- Create Date: 31.10.2024 02:20:25
-- Design Name: 
-- Module Name: DP_32Bit_LogicCircuit_23373470 - Behavioral
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

entity DP_32Bit_LogicCircuit_23373470 is
    Port ( A : in std_logic_vector (31 downto 0); 
           B : in std_logic_vector (31 downto 0);
           S0 : in std_logic;
           S1 : in std_logic;
           G : out std_logic_vector (31 downto 0) );
end DP_32Bit_LogicCircuit_23373470;

architecture Behavioral of DP_32Bit_LogicCircuit_23373470 is

component DP_SingleBit_LogicCircuit_23373470 is
    Port ( A : in std_logic; 
           B : in std_logic;
           S0 : in std_logic;
           S1 : in std_logic;
           G : out std_logic);
end component;
begin


Bit00 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(0),
           B => B(0),
           G => G(0),
           S0 => S0 ,
           S1 => S1
 );
Bit01 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(1),
           B => B(1),
           G => G(1),
           S0 => S0 ,
           S1 => S1
 );
 Bit02 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(2),
           B => B(2),
           G => G(2),
           S0 => S0 ,
           S1 => S1
 );
 Bit03 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(3),
           B => B(3),
           G => G(3),
           S0 => S0 ,
           S1 => S1
 );
 Bit04 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(4),
           B => B(4),
           G => G(4),
           S0 => S0 ,
           S1 => S1
 );
 Bit05 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(5),
           B => B(5),
           G => G(5),
           S0 => S0 ,
           S1 => S1
 );
 Bit06 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(6),
           B => B(6),
           G => G(6),
           S0 => S0 ,
           S1 => S1
 );
 Bit07 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(7),
           B => B(7),
           G => G(7),
           S0 => S0 ,
           S1 => S1
 );
 Bit08 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(8),
           B => B(8),
           G => G(8),
           S0 => S0 ,
           S1 => S1
 );
 Bit09 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(9),
           B => B(9),
           G => G(9),
           S0 => S0 ,
           S1 => S1
 );
 Bit10 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(10),
           B => B(10),
           G => G(10),
           S0 => S0 ,
           S1 => S1
 );
 Bit11 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(11),
           B => B(11),
           G => G(11),
           S0 => S0 ,
           S1 => S1
 );
 Bit12 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(12),
           B => B(12),
           G => G(12),
           S0 => S0 ,
           S1 => S1
 );
 Bit13 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(13),
           B => B(13),
           G => G(13),
           S0 => S0 ,
           S1 => S1
 );
 Bit14 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(14),
           B => B(14),
           G => G(14),
           S0 => S0 ,
           S1 => S1
 );
 Bit15 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(15),
           B => B(15),
           G => G(15),
           S0 => S0 ,
           S1 => S1
 );
 Bit16 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(16),
           B => B(16),
           G => G(16),
           S0 => S0 ,
           S1 => S1
 );
 Bit17 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(17),
           B => B(17),
           G => G(17),
           S0 => S0 ,
           S1 => S1
 );
 Bit18 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(18),
           B => B(18),
           G => G(18),
           S0 => S0 ,
           S1 => S1
 );
 Bit19 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(19),
           B => B(19),
           G => G(19),
           S0 => S0 ,
           S1 => S1
 );
 Bit20 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(20),
           B => B(20),
           G => G(20),
           S0 => S0 ,
           S1 => S1
 );
 Bit21 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(21),
           B => B(21),
           G => G(21),
           S0 => S0 ,
           S1 => S1
 );
 Bit22 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(22),
           B => B(22),
           G => G(22),
           S0 => S0 ,
           S1 => S1
 );
 Bit23 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(23),
           B => B(23),
           G => G(23),
           S0 => S0 ,
           S1 => S1
 );
 Bit24 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(24),
           B => B(24),
           G => G(24),
           S0 => S0 ,
           S1 => S1
 );
 Bit25 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(25),
           B => B(25),
           G => G(25),
           S0 => S0 ,
           S1 => S1
 );
 Bit26 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(26),
           B => B(26),
           G => G(26),
           S0 => S0 ,
           S1 => S1
 );
 Bit27 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(27),
           B => B(27),
           G => G(27),
           S0 => S0 ,
           S1 => S1
 );
 Bit28 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(28),
           B => B(28),
           G => G(28),
           S0 => S0 ,
           S1 => S1
 );
 Bit29 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(29),
           B => B(29),
           G => G(29),
           S0 => S0 ,
           S1 => S1
 );
 Bit30 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(30),
           B => B(30),
           G => G(30),
           S0 => S0 ,
           S1 => S1
 );
 Bit31 : DP_SingleBit_LogicCircuit_23373470 PORT MAP
(          A => A(31),
           B => B(31),
           G => G(31),
           S0 => S0 ,
           S1 => S1
 );

 
 

end Behavioral;
