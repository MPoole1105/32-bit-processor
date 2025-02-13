----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Matthew Poole
-- 
-- Create Date: 31.10.2024 02:16:10
-- Design Name: 
-- Module Name: DP_RippleCarryAddder32Bit_23373470 - Behavioral
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

entity DP_RippleCarryAddder32Bit_23373470 is
    Port ( A_R : in std_logic_vector (31 downto 0);
           B_R : in std_logic_vector (31 downto 0);
           Cin_R : in std_logic;
           S_R : out std_logic_vector (31 downto 0);
           Cout : out std_logic;
           V : out std_logic  );
           
end DP_RippleCarryAddder32Bit_23373470;

architecture Behavioral of DP_RippleCarryAddder32Bit_23373470 is

component DP_FullAdder_23373470 is
Port ( A : in std_logic;
           B : in std_logic;
           Cin : in std_logic;
           S : out std_logic;
           Cout : out std_logic);
end component;


signal Carry1, Carry2, Carry3, Carry4,  Carry5, Carry6, Carry7, Carry8, Carry9, Carry10, Carry11, Carry12, Carry13, Carry14,  Carry15, Carry16, Carry17, Carry18, Carry19, Carry20, Carry21, Carry22, Carry23, Carry24,  Carry25, Carry26, Carry27, Carry28, Carry29, Carry30, Carry31 : std_logic; 
signal Cout_R : std_logic;
  constant AND_gate_delay : Time := 1ns;      -- least significant digit 1 = 0 + 1
  constant NAND_gate_delay : Time := 8ns;     -- next more significant digit 8 = 7 + 
  constant OR_gate_delay : Time := 5ns;       -- next more significant digit 5 = 4 + 1
  constant NOR_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1
  constant XOR_gate_delay : Time := 8ns;      -- next more significant digit 8 = 7 + 1
  constant XNOR_gate_delay : Time := 4ns;     -- next more significant digit 4 = 3 + 1
  constant NOT_gate_delay : Time := 4ns;      -- next more significant digit 4 = 3 + 1

begin


Bit00 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(0),
           B => B_R(0),
           Cin => Cin_R,
           S => S_R(0),
           Cout => Carry1
 );
 
Bit01 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(1),
           B => B_R(1),
           Cin => carry1,
           S => S_R(1),
           Cout => Carry2
 );
 
 Bit02 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(2),
           B => B_R(2),
           Cin => carry2,
           S => S_R(2),
           Cout => Carry3
 );
 
 Bit03 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(3),
           B => B_R(3),
           Cin => carry3,
           S => S_R(3),
           Cout => Carry4
 );
 Bit04 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(4),
           B => B_R(4),
           Cin => carry4,
           S => S_R(4),
           Cout => Carry5
 );
 
Bit05 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(5),
           B => B_R(5),
           Cin => carry5,
           S => S_R(5),
           Cout => Carry6
 );
 
 Bit06 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(6),
           B => B_R(6),
           Cin => carry6,
           S => S_R(6),
           Cout => Carry7
 );
 
 Bit07 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(7),
           B => B_R(7),
           Cin => carry7,
           S => S_R(7),
           Cout => Carry8
 );
 Bit08 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(8),
           B => B_R(8),
           Cin => carry8,
           S => S_R(8),
           Cout => Carry9
 );
 
 Bit09 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(9),
           B => B_R(9),
           Cin => carry9,
           S => S_R(9),
           Cout => Carry10
 );

Bit10 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(10),
           B => B_R(10),
           Cin => carry10,
           S => S_R(10),
           Cout => Carry11
 );
 
Bit11 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(11),
           B => B_R(11),
           Cin => carry11,
           S => S_R(11),
           Cout => Carry12
 );
 
 Bit12 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(12),
           B => B_R(12),
           Cin => carry12,
           S => S_R(12),
           Cout => Carry13
 );
 
 Bit13 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(13),
           B => B_R(13),
           Cin => carry13,
           S => S_R(13),
           Cout => Carry14
 );
 Bit14 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(14),
           B => B_R(14),
           Cin => carry14,
           S => S_R(14),
           Cout => Carry15
 );
 
Bit15 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(15),
           B => B_R(15),
           Cin => carry15,
           S => S_R(15),
           Cout => Carry16
 );
 
 Bit16 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(16),
           B => B_R(16),
           Cin => carry16,
           S => S_R(16),
           Cout => Carry17
 );
 
 Bit17 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(17),
           B => B_R(17),
           Cin => carry17,
           S => S_R(17),
           Cout => Carry18
 );
 Bit18 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(18),
           B => B_R(18),
           Cin => carry18,
           S => S_R(18),
           Cout => Carry19
 );
 
 Bit19 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(19),
           B => B_R(19),
           Cin => carry19,
           S => S_R(19),
           Cout => Carry20
 );

Bit20 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(20),
           B => B_R(20),
           Cin => carry20,
           S => S_R(20),
           Cout => Carry21
 );
 
Bit21 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(21),
           B => B_R(21),
           Cin => carry21,
           S => S_R(21),
           Cout => Carry22
 );
 
 Bit22 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(22),
           B => B_R(22),
           Cin => carry22,
           S => S_R(22),
           Cout => Carry23
 );
 
 Bit23 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(23),
           B => B_R(23),
           Cin => carry23,
           S => S_R(23),
           Cout => Carry24
 );
 Bit24 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(24),
           B => B_R(24),
           Cin => carry24,
           S => S_R(24),
           Cout => Carry25
 );
 
Bit25 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(25),
           B => B_R(25),
           Cin => carry25,
           S => S_R(25),
           Cout => Carry26
 );
 
 Bit26 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(26),
           B => B_R(26),
           Cin => carry26,
           S => S_R(26),
           Cout => Carry27
 );
 
 Bit27 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(27),
           B => B_R(27),
           Cin => carry27,
           S => S_R(27),
           Cout => Carry28
 );
 Bit28 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(28),
           B => B_R(28),
           Cin => carry28,
           S => S_R(28),
           Cout => Carry29
 );
 
 Bit29 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(29),
           B => B_R(29),
           Cin => carry29,
           S => S_R(29),
           Cout => Carry30
 );
 Bit30 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(30),
           B => B_R(30),
           Cin => carry30,
           S => S_R(30),
           Cout => Carry31
 );
 
 Bit31 : DP_FullAdder_23373470 PORT MAP
(          A => A_R(31),
           B => B_R(31),
           Cin => carry31,
           S => S_R(31),
           Cout => Cout_R
);

V <= Cout_R XOR Carry31 after XOR_Gate_Delay;
Cout <= Cout_R; 
 
end Behavioral;
